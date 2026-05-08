---
name: write-kanban-card
description: Creates consises and simple Kanban cards with description, criteria of done and background information for general tasks, activities and requests to be added to a Kanban board. Extracts from contexts, documents or guides through essential questions to generate a concise card text in Spanish. Use when the user mentions "kanban card", "tarjeta kanban", "businessmap card".
---

# Kanban Card Delivery

Guide the user in creating a Kanban card for an Activity.

Language: Interact with the user in **Spanish**. Output the card in **Spanish**. The instructions below are in English for your reference.

## Principles

- **Extract from context first**: If the user already shared the information about the task, activity, or initiative, use it to generate the card.
- **Ask until clear**: If the context is missing, ask until it is clear. If significant ambiguity remains, suggest using `grill-me` first.
- **Validate the Criterio de Listo**: Every item must pass the 3 rules below. Do not accept vague items.
- **Short output**: The card is for the Kanban board, not a full initiative document.

## Criterio de Listo Rules

Each item must satisfy all 3 conditions. Validate each one explicitly:

1. **Binario** — it is either done or not done. No intermediate states, no percentages.
2. **Verificable por cualquiera** — any team member can confirm it without explanation from the owner.
3. **Orientado al resultado, no a la acción** — describes what exists or happened, not what was done.

## Conversation Flow

### Step 1: Context

If the user has **not** provided context in the conversation, ask:

1. ¿Cuál es el nombre de la tarea o actividad?
2. ¿Cuál es su objetivo o qué se busca lograr con esta tarea?
3. ¿Qué criterios de done (Criterio de Listo) podrían indicar que esta tarea está completa?
4. ¿Qué antecedentes, documentos, enlaces o referencias son relevantes para entender esta tarea?

If context remains ambiguous after asking, suggest loading `grill-me` first.

### Step 2: Title and Description

Ask:

1. **Título** of the activity (short, descriptive name).
2. **Descripción** — what needs to be done and why.

### Step 3: Criterio de Listo

Guide the user to write each Criterio de Listo item. For each item they propose:

- Validate against the 3 rules.
- If it fails one, explain which rule and ask them to rephrase.
- Help decompose vague items into concrete binary conditions.
- Suggest at least 3-5 items to ensure the activity is well-defined.

Validation example:

> User: "Reunión con el equipo del proyecto"
> You: "Eso describe una acción, no un resultado. ¿Qué debe existir después de esa reunión? Por ejemplo: 'Calendario de actividades acordado con el equipo'"

### Step 4: Antecedentes y Material Relacionado

Ask: "¿Qué contexto previo, documentos, enlaces, correos o referencias son relevantes para entender esta actividad?"

List each element with a hyphen (`-`). If none, write "- Ninguno por el momento".

### Step 5: Generate Output

Generate the card using the format below. Use the `---` delimiter to separate the card from the rest of the conversation.

```
---
Título: [Nombre de la Tarea/Actividad]

Descripción
[Texto descriptivo — qué hay que hacer y con qué propósito]

Criterio de Listo
- [ ] [Ítem binario]
- [ ] [Ítem binario]
- [ ] [Ítem binario]

Antecedentes y Material Relacionado
- [Contexto, enlace, documento, correo o referencia]
- [...]
---
```

## Iteration

- The user can request adjustments after the card is generated.
- Title, description, Criterio de Listo items, and antecedentes can all be edited.
- Each generated version is an iteration that can be refined.
