---
description: Instructions for creating custom chat modes in this workspace.
applyTo: "memory-bank/chatmodes/**"
---

# Creating Custom Chat Modes

To create a new chat mode:

1. Create a `.chatmode.md` file in `memory-bank/chatmodes/`
2. Add a front matter header with `description`, `tools`, and `model` fields
3. Write clear, concise instructions in the body, focused on the chat mode's purpose
4. Reference any relevant instructions files using relative Markdown links
5. Do not duplicate tool lists—rely on user or workspace configuration
6. Use only one top-level header per file

## Custom Chat Modes Overview

- Create custom chat modes to tailor chat behavior in VS Code.
- Define instructions and tools that activate when you select the mode.
- Store chat modes in the workspace or user profile for reuse.
- Reference instructions files and tool sets as needed.

## Chat Mode File Structure

- Name the file `<chatmode_name>.chatmode.md` for clarity.
- Use the `.chatmode.md` suffix to identify chat mode files.
- Split each file into front matter metadata and body instructions.

### Front Matter Metadata Header
- Include a `description` field with a brief summary of the mode.
- Use only existing tools in the `tools` field to avoid hallucinations.
- Optionally set `model` to `GPT-4.1` when a specific model is required.

### Body With Chat Mode Instructions
- Provide prompts and guidelines for behavior in this mode.
- Reference instruction files with Markdown links.
- Ensure the body complements the chat prompt.

## Creating a Chat Mode File

### Steps to Create

1. Choose a relevant and descriptive name in `<chatmode_name>.chatmode.md` format for the chat mode, which is used in the chat mode dropdown list in the Chat view
2. Provide the description and do not configure the list of available tools or tool sets in the Front Matter metadata
3. Rely on the user to configure tools later or include those already mentioned or already in place
4. Add instructions for the chat mode in the body of the file
5. Use `memory-bank/chatmodes/` folder instead of the default `.github/chatmodes` folder

### Important Guidelines

- We have already configured the locations of workspace chat mode files, prompts files and instructions inside of `memory-bank/` directory
- Keep each chat mode focused on a specific purpose or workflow
- Reference related instructions files to avoid duplication
- Ensure clear, actionable instructions for AI agents

## Related Documentation

For additional guidance, see:

- [Instructions Files Usage](../instructions/instructions-files.instructions.md)
- [Prompt Files Creation](../instructions/prompt-files.instructions.md)
- [Workspace Settings Configuration](../instructions/settings.instructions.md)
