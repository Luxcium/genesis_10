---
mode: 'agent'
model: GPT-4.1
tools: ['runTasks', 'terminal-and-tasks']
description: Get the current local date and time in Québec City (America/Toronto timezone).
---

# Get Current Date/Time (Québec City Local)

This prompt describes how to use the autonomous AI agent task for retrieving the current local date and time in Québec City (America/Toronto timezone).

---

## Task Overview
- **Task Name:** Get Current Date/Time (Québec City Local)
- **Script:** `scripts/get-current-datetime.sh`
- **VS Code Task:** `.vscode/tasks.json` (label: "Get Current Date/Time (Québec City Local)")

## How to Use (AI Agent Instructions)
1. Run the VS Code task labeled **Get Current Date/Time (Québec City Local)**.
2. The task will execute the script `scripts/get-current-datetime.sh`.
3. The script outputs the current local date and time for Québec City in ISO 8601 format, using the `America/Toronto` timezone.

## Script Details
- The script sets the `TZ` environment variable to `America/Toronto` for accurate local time.
- Output example: `Current Québec City local date/time: 2025-08-04T00:00:00-0400`

## Best Practices
- Always use the provided task for consistent results.
- Do not modify the script or task label without updating this prompt.
- Maintain 1:1:1 mapping: **task ↔ script ↔ prompt** for clarity and maintainability. See [systemPatterns.md](../systemPatterns.md) for details.

---

## Tool Sets Available

You must use them as to perform the task described above, when it is relevant and appropriate.

copilotCodingAgent: Completes the provided task using an asynchronous coding agent. Use when the user wants copilot continue completing a task in the background or asynchronously. Launch an autonomous GitHub Copilot agent to work on coding tasks in the background. The agent will create a new branch, implement the requested changes, and open a pull request with the completed work.

runCommands: runCommands (Built-In)
Runs commands in the terminal

runTasks: runTasks (Built-In) # Preferred as it runs tasks in the workspace.
Run tasks in workspace

terminalLastCommand: terminalLastCommand (Built-In)
The active terminal's last run command

terminalSelection: terminalSelection (Built-In)
The active terminal's selection

## References
- [Task-Script-Prompt 1:1:1 Pattern](../systemPatterns.md)
- [Prompt Files Creation](../instructions/prompt-files.instructions.md)
- [Instructions Files Usage](../instructions/instructions-files.instructions.md)

_Last updated: 2025-08-05_
