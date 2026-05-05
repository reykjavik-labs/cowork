#!/bin/bash

# Script to run OpenCode in a Docker container, with auto-build and config management.

# Configuration
CONTAINER_NAME="cowork-opencode-1"
CONTAINER_USER="stark"
CONTAINER_HOME_DIR="/home/${CONTAINER_USER}"
CONTAINER_COWORK_DIR="${CONTAINER_HOME_DIR}/cowork"
IMAGE_NAME="reykjavik-cowork-opencode"
DOCKERFILE="Dockerfile"

if [[ -z "$COWORK_DIR" ]]; then
    echo "❌ COWORK_DIR is not set. Export it before running this script."
    exit 1
fi

if [[ -z "$OPENCODE_CONFIG_DIR" ]]; then
    echo "❌ OPENCODE_CONFIG_DIR is not set. Export it before running this script."
    exit 1
fi

LOCAL_AUTH_FILE="$HOME/.local/share/opencode/auth.json"
LOCAL_SSH_KEY="$HOME/.ssh/id_ed25519_docker-opencode"
LOCAL_GH_CONFIG="$HOME/.config/gh"
LOCAL_LOGS_DIR="$COWORK_DIR/logs"
CONTAINER_LOGS_DIR="${CONTAINER_HOME_DIR}/logs"
LOG_FILE="${CONTAINER_LOGS_DIR}/opencode-$(date +%Y%m%d-%H%M%S).log"

mkdir -p "$LOCAL_LOGS_DIR"

# Function to handle building
build_image() {
    echo "🔨 Building image from $DOCKERFILE..."

    if ! docker build --platform linux/arm64 -t $IMAGE_NAME -f $DOCKERFILE .; then
        echo "❌ Docker build failed. Exiting."
        exit 1
    fi
    echo "✅ Build successful."
}

# Function to exec into the container
exec_container() {
    echo "🔗 Connecting to OpenCode..."
    echo "📝 Logging to $LOCAL_LOGS_DIR/$(basename "$LOG_FILE")"

    exec docker exec -it -w $CONTAINER_COWORK_DIR $CONTAINER_NAME /bin/bash -c \
        "mkdir -p $CONTAINER_LOGS_DIR && $CONTAINER_HOME_DIR/.opencode/bin/opencode . 2>&1 | tee $LOG_FILE"
}

# ---------------------------------------------------------
# 0. Check for "rebuild" parameter
# ---------------------------------------------------------
if [ "$1" == "rebuild" ]; then
    echo "Force rebuild requested..."
    build_image
    exit 0
fi

# ---------------------------------------------------------
# 1. Check if Container Exists (Running or Stopped)
# ---------------------------------------------------------
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "🔄 Container '$CONTAINER_NAME' is already running."
    exec_container
    exit 0
elif [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "🔄 Container '$CONTAINER_NAME' exists but is stopped."
    echo "🗑️  Removing old container..."
    docker rm $CONTAINER_NAME
fi

# ---------------------------------------------------------
# 4. Auto-Build Image (if missing)
# ---------------------------------------------------------
if [[ "$(docker images -q $IMAGE_NAME 2> /dev/null)" == "" ]]; then
    echo "⚠️  Image '$IMAGE_NAME' not found locally."
    build_image
fi

# ---------------------------------------------------------
# 5. Run New Container
# ---------------------------------------------------------
echo "🚀 Starting OpenCode. Running new container..."

docker run -dit --platform linux/arm64 --name $CONTAINER_NAME \
    -h $CONTAINER_NAME \
    -e OPENCODE_CONFIG_DIR="$CONTAINER_HOME_DIR/.config/opencode" \
    -e OPENCODE_CONFIG="$CONTAINER_HOME_DIR/.config/opencode/opencode.json" \
    -w $CONTAINER_COWORK_DIR \
    -v "$LOCAL_AUTH_FILE":$CONTAINER_HOME_DIR/.local/share/opencode/auth.json \
    -v "$OPENCODE_CONFIG_DIR":$CONTAINER_HOME_DIR/.config/opencode \
    -v "$LOCAL_SSH_KEY":$CONTAINER_HOME_DIR/.ssh/id_ed25519:ro \
    -v "$LOCAL_GH_CONFIG":$CONTAINER_HOME_DIR/.config/gh \
    -v "$LOCAL_LOGS_DIR":$CONTAINER_LOGS_DIR \
    -v "$COWORK_DIR":$CONTAINER_COWORK_DIR \
    $IMAGE_NAME /bin/bash

docker run -it --rm \
      -h $CONTAINER_NAME \
      -e OPENCODE_CONFIG_DIR="$CONTAINER_OPENCODE_DIR" \
      -e OPENCODE_CONFIG="$CONTAINER_OPENCODE_CONFIG" \
      -w /home/stark/workspace \
      -v "$LOCAL_AUTH_FILE":"$CONTAINER_OPENCODE_AUTH" \
      -v "$OPENCODE_CONFIG":"$CONTAINER_OPENCODE_CONFIG" \
      -v "$OPENCODE_CONFIG_DIR":"$CONTAINER_OPENCODE_DIR" \
      -v "$LOCAL_LOGS_DIR":$CONTAINER_LOGS_DIR \
      -v "$COWORK_DIR":$CONTAINER_COWORK_DIR \
      -v "$(pwd):/home/stark/workspace" \
      
      ghcr.io/anomalyco/opencode:latest "$@"

exec_container

