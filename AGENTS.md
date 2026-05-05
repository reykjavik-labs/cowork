# AGENTS.md — cowork

This repo is a documentation hub for 3 company projects under `projects/`. Not a code monorepo — almost all work is Markdown.

## Commands

- **`bun run lint`** — auto-fix formatting + markdown lint (runs on pre-commit hook)
- **`bun run lint:biome`** — Biome check + write (tabs, double quotes, semicolons)
- **`bun run lint:markdown`** — markdownlint-cli2 --fix on `projects/**/*.md`
- **Commit hook** runs `bunx cz` (commitizen) for conventional commits. If non-interactive (CI), commitizen is skipped — write a conventional commit message manually.

## Project conventions

- All projects are in `projects/`
- There are 3 projects: `23people/`, `cognitionbase/`, `reykjavik/` — content is in Spanish
- Each project has:
    - `consolidated/` — **read-only**. Do not write without explicit user permission.
    - `tasks/` — write temp task files here. Name subfolders `YYYYMMDD-hhmm-[slug]/`.
- This file applies at repo root. Each project also has its own `CLAUDE.md` and `AGENTS.md` with sub-project-specific rules.

## Workflow

- When working on a task, create a new folder inside `tasks/` named `YYYYMMDD-hhmm-[slug]/` in the relevant project.
- Write all work in the task folder. When the task is complete, the user will move the final output to `consolidated/` and delete the task folder.
- Task folders are temporary — they are candidates for deletion at any time. The real source of truth is `consolidated/`.
- The AI assistant must determine which project the current work belongs to and route the task folder creation accordingly.

## Docker / OpenCode en contenedor

El repo incluye `Dockerfile` y `scripts/run-opencode.sh` para correr OpenCode de forma aislada.

### Variables clave del script

| Variable | Valor por defecto | Propósito |
|----------|------------------|-----------|
| `CONTAINER_NAME` | `opencode-1` | Nombre del contenedor Docker |
| `IMAGE_NAME` | `ubuntu-opencode` | Tag de la imagen |
| `AI_PLUGINS_DIR` | `/Volumes/Cowork/reykjavik-labs/ai-plugins/` | Ruta al repo de plugins/skills |
| `OPENCODE_CONFIG_DIR` | `$AI_PLUGINS_DIR/opencode/` | Config y skills de OpenCode |
| `COWORK_DIR` | `/Volumes/Cowork/organizations/reykjavik-labs/cowork` | Este repo (montado como volumen) |

### Volúmenes montados en el contenedor

- `$COWORK_DIR` → `/home/ubuntu/cowork` — ediciones persisten en el host en tiempo real
- `$OPENCODE_CONFIG_DIR` → `/home/ubuntu/.config/opencode` — skills (incluyendo `save-changes`)
- `~/.local/share/opencode/auth.json` → auth de OpenCode
- `~/.config/gh` → OAuth de GitHub CLI (permite `gh pr create` sin `GH_TOKEN`)
- `~/.ssh/id_ed25519_docker-opencode` → montado como `~/.ssh/id_ed25519` para git

### SSH y GitHub auth

- Se requiere una llave SSH dedicada `~/.ssh/id_ed25519_docker-opencode` con su pública registrada en GitHub.
- La autenticación de `gh` CLI se reutiliza desde el host vía el mount de `~/.config/gh`. No se necesita `GH_TOKEN` si el host ya tiene sesión OAuth activa.

### El skill `save-changes`

OpenCode ejecutará el skill `/opencode/skills/save-changes` que usa `gh pr create`. Por eso se necesita acceso a GitHub — se resuelve con el mount de `~/.config/gh`.

### Comandos

```bash
bash scripts/run-opencode.sh          # inicio normal (auto-build si falta la imagen)
bash scripts/run-opencode.sh rebuild  # forzar reconstrucción de la imagen
```

## Memory system

- Each project has a `consolidated/.memory/MEMORY.md` file that serves as an index of memory notes.
- Memory notes live as separate `.md` files in `consolidated/.memory/` alongside the index.
- Before starting work on a task, the AI assistant should read the `MEMORY.md` file to gather relevant context.
- During or after a task, the AI assistant should append or update memory notes in `.memory/` with any relevant information that should persist across sessions.
