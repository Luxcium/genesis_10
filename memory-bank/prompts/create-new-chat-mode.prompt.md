---
description: This document provides instructions for creating a new chat mode in the memory bank system. It outlines the necessary steps and structure for defining a chat mode, including file naming, front matter requirements, and content guidelines.

tools: ['codebase-usages', 'fetch', 'terminal-and-tasks', 'search']
---
# Creating Custom Chat Modes

You will create a new chat mode:

1. Create a `.chatmode.md` file in `memory-bank/chatmodes/`
2. Add a front matter header with `description`, `tools`, and `model` fields
3. Write clear, concise instructions in the body, focused on the chat mode's purpose
4. Reference any relevant instructions files using relative Markdown links
5. Do not duplicate tool lists—rely on user or workspace configuration
6. Use only one top-level header per file

[Follow the instruction in chatmode creation instructions](../instructions/chatmode-creation.instructions.md)


## Tools and Toolsets

Use the following tools and toolsets as required when creating a chat mode, but do not add them to the chat mode file directly. Instead, rely on the user or workspace configuration to provide these tools.

### ToolSet: codebase-usages

This toolset allows you to explore the codebase, edit files, and find usages of specific functions or modules.

codebase
usages
changes
insertEdit
replaceString
applyPatch
createFile
createDirectory
editNotebook
newJupyterNotebook

### ToolSet: terminal-and-tasks

Run commands in the terminal and run task in workspace, active terminal's last run command and, if any, incluides active terminal's selection via terminalSelection resource.

copilotCodingAgent
terminalLastCommand
terminalSelection
runInTerminal
getTerminalOutput
runTask
getTaskOutput

### ToolSet: search

Search and read files in your workspace

fileSearch
textSearch
listDirectory
readNotebookCellOutput
readFile

###  Tool: Fetch

Fetches the main content from a web page. This tool is useful for summarizing or analyzing the content of a webpage. You should use this tool when you think the user is looking for information from a specific webpage.
