# AGENTS.md — cowork

This repo is a documentation hub for 3 company projects under `projects/`. Not a code monorepo — almost all work is Markdown.

## Commands

- **`bun run lint`** — auto-fix formatting + markdown lint (runs on pre-commit hook)
- **`bun run lint:biome`** — Biome check + write (tabs, double quotes, semicolons)
- **`bun run lint:markdown`** — markdownlint-cli2 --fix on `projects/**/*.md`
- **Commit hook** runs `bunx cz` (commitizen) for conventional commits. If non-interactive (CI), commitizen is skipped — write a conventional commit message manually.

## Project conventions

- The current projects are determined by every subfolder in `projects/`.
- Each project has:
    - `consolidated/` — **read-only**. Do not write without explicit user permission.
    - `tasks/` — write temp task files here. Name subfolders `YYYYMMDD-hhmm-[slug]/`.
- This file applies at repo root. Each project also has its own `CLAUDE.md` and `AGENTS.md` with sub-project-specific rules.

## Workflow

- **IMPORTANT: ALWAYS create a task folder BEFORE writing any output file.** Create a new folder inside `tasks/` named `YYYYMMDD-hhmm-[slug]/` in the relevant project.
- Write all work in the task folder. When the task is complete, the user will move the final output to `consolidated/` and delete the task folder.
- Task folders are temporary — they are candidates for deletion at any time. The real source of truth is `consolidated/`.
- The AI assistant must determine which project the current work belongs to and route the task folder creation accordingly.

## Memory system

- Each project has a `consolidated/.memory/MEMORY.md` file that serves as an index of memory notes.
- Memory notes live as separate `.md` files in `consolidated/.memory/` alongside the index.
- Before starting work on a task, the AI assistant should read the `MEMORY.md` file to gather relevant context.
- During or after a task, the AI assistant should append or update memory notes in `.memory/` with any relevant information that should persist across sessions.
