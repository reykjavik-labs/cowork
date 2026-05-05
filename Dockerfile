# Start from the latest official Ubuntu release
FROM ubuntu:22.04

# User configuration
ARG USER=stark
ARG HOME_DIR=/home/${USER}
ARG COWORK_DIR=${HOME_DIR}/cowork

# Set common environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Configure apt to retry on network failures
RUN echo 'Acquire::Retries "5";' > /etc/apt/apt.conf.d/80retries

# Install core tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    # Core utilities needed for setup and the curl install script
    wget \
    vim \
    ca-certificates \
    curl \
    unzip \
    gnupg \
    sudo \
    openssh-client

# Install GitHub CLI (gh)
RUN mkdir -p -m 755 /etc/apt/keyrings \
    && curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
    && chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && apt-get update \
    && apt-get install -y gh \
    # Clean up APT lists
    && rm -rf /var/lib/apt/lists/*

# Create the non-root user
RUN groupadd --gid 1000 ${USER} \
    && useradd --uid 1000 --gid ${USER} --shell /bin/bash --create-home ${USER} \
    && usermod -aG sudo ${USER} \
    && echo "${USER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER} \
    && chmod 0440 /etc/sudoers.d/${USER}

# Set the non-root user as the default user
USER ${USER}

# Set the working directory to the user's home folder
WORKDIR ${COWORK_DIR}

# 1. Create the .ssh directory
RUN mkdir -p ${HOME_DIR}/.ssh

# 2. Add GitHub to the known_hosts file so git commands work non-interactively
# We use ssh-keyscan to fetch GitHub's public key and save it.
RUN ssh-keyscan github.com >> ${HOME_DIR}/.ssh/known_hosts

# Create the directory structure for the auth file and fix ownership
# This prevents Docker from creating it as 'root' when the volume is mounted.
# This is important to be able to mount the OpenCode auth on docker run
#    -v ~/.local/share/opencode/auth.json:${HOME_DIR}/.local/share/opencode/auth.json
RUN mkdir -p ${HOME_DIR}/.local/share/opencode \
    && chown -R ${USER}:${USER} ${HOME_DIR}/.local/share/opencode

RUN mkdir -p ${HOME_DIR}/.config/opencode \
    && chown -R ${USER}:${USER} ${HOME_DIR}/.config/opencode

# Copy the project dir into the VM
COPY --chown=${USER}:${USER} ./projects ${COWORK_DIR}/projects

# Install OpenCode AI (Native Binary Method
# https://opencode.ai/docs/
RUN curl -fsSL https://opencode.ai/install | bash
