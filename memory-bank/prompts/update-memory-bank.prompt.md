---
description: This prompt is used to trigger a full documentation review and update during a task. It ensures that the memory bank is kept up-to-date with the latest information and practices.
tools: ['codebase', 'editFiles', 'runCommands', 'search']
---
# Update Memory Bank

Triggers copilot to do a full documentation review and update during a task
following the instructions in the [The Complete Guide to Cline Memory Bank](../instructions/memory-bank-docs.instructions.md), you shall gather the information from the project sections and back to see if they are indexed, rewriting in pristine markdown as we are expecting.

Shall you find any missing information, you shall add it to the memory bank files, following the instructions in the [Memory Bank Protocol](../instructions/memory-bank-core.instructions.md), and anything else that is required from you.

## Validation Task
- **VS Code Task:** Validate Memory Bank
- **Script:** `scripts/memory-bank-validate.sh`

## Tools

Run a natural language search for relevant code or documentation comments from the user's current workspace. Returns relevant code snippets from the user's current workspace if it is large, or the full contents of the workspace if it is small.

### ToolSet: editFiles

Edit files in workspace

insertEdit
replaceString
applyPatch
createFile
createDirectory

### ToolSet: runCommands

Runs commands in terminal

runInTerminal
getTerminalOutput

### ToolSet: search

Search and read files in workspace

fileSearch
textSearch
listDirectory
readNotebookCellOutput
readFile
