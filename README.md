# Cowork

This is the starting point for all the tasks needed to be done for the all the companies where Reykavik Labs contributes.

Every company is treated as a separate project, and all the projects are located in the `projects` directory: `23people/`, `cognitionbase/`, `reykjavik/` — content is in Spanish.

The main idea is to work in this projects as we work in Claude Cowork, were the consolidated directory is where all the final outputs and reviewed files are stored, and all the new work is done in the `tasks` directory, where we create a new folder for each task with the following format: `YYYYMMDD-hhmm-[slug]/`.

Each project has:
    - `consolidated/`: where all the final outputs are stored.
    - `tasks/` — write temp task files here. Name subfolders `YYYYMMDD-hhmm-[slug]/`.

## Ejecutar OpenCode con Docker

El repositorio incluye un `Dockerfile` y un script `scripts/run-opencode.sh` para correr OpenCode de forma aislada en un contenedor Docker.

### Cómo funciona

El script gestiona el ciclo de vida del contenedor automáticamente:

1. Si el contenedor ya está corriendo, conecta directamente.
2. Si el contenedor existe pero está detenido, lo elimina y recrea.
3. Si la imagen no existe, la construye primero.
4. Ejecuta `opencode .` dentro del directorio del proyecto montado.

### Requisitos previos

- **SSH key dedicada para Docker**: crear `~/.ssh/id_ed25519_docker-opencode` y registrar la clave pública en GitHub. El contenedor la monta como `~/.ssh/id_ed25519` para operaciones git.
- **Auth de OpenCode**: el archivo `~/.local/share/opencode/auth.json` debe existir en el host (se monta en el contenedor).
- **Auth de GitHub CLI**: el directorio `~/.config/gh` se monta para reutilizar el OAuth del host. Esto permite al contenedor hacer `gh pr create` sin necesitar `GH_TOKEN`.

### Volúmenes montados

El contenedor sincroniza las siguientes rutas con el host en tiempo real (no es un snapshot de build):

| Host | Contenedor | Propósito |
|------|-----------|-----------|
| `$COWORK_DIR` | `/home/ubuntu/cowork` | Ediciones a archivos persisten en el host |
| `$OPENCODE_CONFIG_DIR` | `/home/ubuntu/.config/opencode` | Skills y config de OpenCode |
| `~/.local/share/opencode/auth.json` | `/home/ubuntu/.local/share/opencode/auth.json` | Sesión de OpenCode |
| `~/.config/gh` | `/home/ubuntu/.config/gh` | OAuth de GitHub CLI |
| `~/.ssh/id_ed25519_docker-opencode` | `/home/ubuntu/.ssh/id_ed25519` | Llave SSH para git |

### Uso

```bash
# Primera vez (o para reconstruir la imagen):
bash scripts/run-opencode.sh rebuild

# Uso normal:
bash scripts/run-opencode.sh
```

The same idea of workflow applies when working with Opencode.

AI instructions are written in `AGENTS.md` and the `CLAUDE.md` files, which are located in the root of the repo and in each project folder, where we specify the rules and instructions for each project.

So, when I want to work in a task for a specific project, the AI assistant (Claude Cowork/Code or Opencode) should create a new folder in the `tasks` directory of that project, and write all the work there. Eventually, when the task is finished, the user will move the final output to the `consolidated` directory, and delete the task folder.

All the tasks folder are candidated to be deleted because the real output is the one in the consolidated folder, and the tasks folder are just a temporary space to work on the task.

Eventually, the output content should be moved to a service as Google Drive and then get the links to this content and used from there via and skill or fetch calls, but for now we will work with the files in the repo.

Into the `consolidated/` folder, there will be a `.memory` folder with a MEMORY.md file, where we will store all the relevant information for the project that is not in the rest of the consolidated folder but we realize, when working in a task, that is important to keep track of. The main AI assistant (Claude Cowork/Code or Opencode) should read this MEMORY.md file before starting to work on a task, and update it with any relevant information that is generated during the task. The MEMORY.md file works as a index for the memory notes, so this file references the other memory notes in the `.memory` folder, which are the ones that actually store the information. The idea is to keep the MEMORY.md file as an index of the memory notes, and not to store all the information in it, because it can get too long and hard to manage.

The AI assistant should determine in what project we are working on, so be able to create the new task folder in the right project, and also be able to read the MEMORY.md file of the project to get all the relevant information before starting to work on the task.
