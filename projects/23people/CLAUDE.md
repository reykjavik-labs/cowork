# CLAUDE.md

This file provides guidance to Claude when working with content in this repository.

## Project Overview

This is the project that contains the information about the 23people company. Here different tasks related to the company are documented.

Mas información sobre 23people: [23people Overview](https://manual.23people.io/llms.txt)

## Content Organization

Esta carpeta contiene dos subcarpetas principales: `consolidated` y `tasks`.

- `consolidated` — Almacena contenido validado y estable, disponible como referencia en múltiples sesiones. Úsalo como fuente de verdad para el proyecto. NO TIENES PERMITIDO ESCRIBIR EN ESTA CARPETA SIN UNA CONFIRMACIÓN EXPLICITA DEL USUARIO.

- `tasks` — Contiene contenido temporal asociado a tareas específicas. Ignora su contenido preexistente, ya que puede estar incompleto o sin validar.

## Guidelines for Claude

1. Nunca puedes escribir en la carpeta `consolidated` a menos que se te de permiso explícito por el usuario. Esta carpeta es para información validada y estable, y solo debe ser modificada con autorización.
2. Puedes escribir en la carpeta `tasks` para crear o modificar contenido relacionado con tareas específicas. Crea una nueva carpeta dentro de `tasks` para cada tarea y guarda allí toda la información relevante. El nombre debe ser del estilo:`YYYYMMDD-hhmm-[slug]`, por ejemplo,`20240615-1545-create-claude-guidelines`.

## Uso de la memoria

Considerar el archivo de memoria `consolidated/.memory/MEMORY.md` al iniciar una conversación.
