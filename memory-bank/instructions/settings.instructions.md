---
description: Settings for managing chat modes, instructions, and prompts in the workspace.
applyTo: ".vscode/settings.json"
---

# Workspace Settings Configuration

This document outlines the VS Code settings for managing chat modes, instructions, and prompts in the workspace. These settings should only be modified with user approval or on user request.

## Custom Instructions Settings

### Core Settings

- **`chat.promptFiles`**: Enable reusable prompt and instructions files
- **`github.copilot.chat.codeGeneration.useInstructionFiles`**: Controls whether code instructions from `memory-bank/copilot-instructions.md` are added to Copilot requests

### Instructions File Locations

**`chat.instructionsFilesLocations`**: A dictionary of folders where instructions files are located and a boolean indicating whether they are enabled. Relative paths are resolved from the root folder(s) of your workspace. Supports glob patterns for file paths.

By default, instructions files are located in the `memory-bank/instructions` folder of your workspace.

```json
"chat.instructionsFilesLocations": {
    "src/frontend/instructions": true,
    "src/backend/instructions": false
}
```

### Specialized Instructions

- **`github.copilot.chat.codeGeneration.instructions`**: Set of instructions added to Copilot requests that generate code
- **`github.copilot.chat.testGeneration.instructions`**: Set of instructions added to Copilot requests that generate tests
- **`github.copilot.chat.reviewSelection.instructions`**: Set of instructions added to Copilot requests for reviewing the current editor selection
- **`github.copilot.chat.commitMessageGeneration.instructions`**: Set of instructions added to Copilot requests that generate commit messages
- **`github.copilot.chat.pullRequestDescriptionGeneration.instructions`**: Set of instructions added to Copilot requests that generate pull request titles and descriptions

## Prompt Files Settings

### Core Settings

- **`chat.promptFiles`**: Enable support for reusable prompt files and instruction files

### Prompt File Locations

**`chat.promptFilesLocations`**: A dictionary of folders where prompt files are located and a boolean indicating whether they are enabled. Relative paths are resolved from the root folder(s) of your workspace. Supports glob patterns for file paths.

By default, prompt files are located in the `memory-bank/prompts` folder of your workspace.

```json
"chat.promptFilesLocations": {
    "memory-bank/prompts": false,
    "setup/**/prompts": true
}
```

## Configuration Management

### Important Notes

- These settings are not necessarily relevant to most AI agent interactions
- Settings must be configured by the user or in the workspace configuration
- Only modify settings when explicitly requested by the user
- Changes should be made through VS Code settings interface or `.vscode/settings.json`

### Related Documentation

For implementation details, see:

- [Instructions Files Usage](./instructions-files.instructions.md)
- [Prompt Files Creation](./prompt-files.instructions.md)
- [Chat Mode Creation Guidelines](./chatmode-creation.instructions.md)
