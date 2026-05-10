# Summary: LLM Wiki Setup with Obsidian

**Source:** transcript_bgXEDymiZCc.txt

## Overview

The speaker demonstrates how to set up and use an **LLM Wiki** — a pattern created by Andrej Karpathy for guiding LLMs/AI agents to work effectively with an Obsidian vault. The speaker uses it as a personal memory bank for logging work, tracking status, and generating roadmaps.

## Setup

1. Copy Karpathy's raw **LLM Wiki** document.
2. Paste it into a coding agent with the prompt "build this."
3. The agent scaffolds a new Obsidian vault following the LLM Wiki pattern.

## Core Concepts

- **Append-only log** — records all operations; entries are never deleted.
- **AI-driven interaction** — the LLM reads and parses logs, answering questions like:
    - *"What did I work on yesterday?"*
    - *"What should I work on today?"*
- The log is extensive and detailed — far more than a human would manually write.

## Custom LLM Wiki Skill

The speaker built a custom skill that:

- Summarizes an entire conversation/context.
- Injects the summary back into the Obsidian vault.
- Triggers on keywords like "log this."
- Captures things the user cares about: revenue, ideas, projects, clients.

## Philosophy

- This is a **memory bank**, not a creative writing tool. The speaker doesn't use AI to generate creative content — only for logging and status tracking.
- Manual logging is error-prone and time-consuming; the LLM Wiki automates it.
- **Personalization is key** — Karpathy's document is a foundation/pattern. Each user should customize it with their own LLM to match their specific needs.

## Benefits Observed

- Faster launch speed
- Improved focus
- Better roadmapping

## Future Idea

Hook the LLM Wiki skill into **Pi** so it runs automatically after every conversation.

## Key Takeaway
>
> "This is a pattern for you to build off of. Make this yours. Build the patterns around it. Don't copy mine, don't copy somebody else's. Take this pattern, feed it through your LLM, have a discussion, and design it that way."
