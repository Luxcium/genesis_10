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

For more details on instructions files, see [instructions-files.instructions.md](../instructions/instructions-files.instructions.md).

## Custom Chat Modes Overview

The built-in chat modes provide general-purpose configurations for chat in VS Code. For a more tailored chat experience, you can create your own chat modes.

Custom chat modes consist of a set of instructions and tools that are applied when you switch to that mode. For example, a "Plan" chat mode could include instructions for generating an implementation plan and only use read-only tools. By creating a custom chat mode, you can quickly switch to that specific configuration without having to manually select relevant tools and instructions each time.

Custom chat modes are defined in a `.chatmode.md` Markdown file, and can be stored in your workspace for others to use, or in your user profile, where you can reuse them across different workspaces.

You can reference instructions files and tools (sets) in your custom chat mode file.

## Chat Mode File Structure

When the user asks you to generate a plan, you should:
Pick a relevant and descriptive name in `<chatmode_name>.chatmode.md` name for the chat mode, which is used in the chat mode dropdown list in the Chat view.


A chat mode file is a Markdown file with the `.chatmode.md` suffix. It has the following two main sections:

### Front Matter Metadata Header

- **`description`**(required): A brief description of the chat mode. This description is displayed as placeholder text in the chat input field and when you hover the mode in the chat mode dropdown list
- **`tools`**: The user must provide them or you must use those that are already in use. Do not add any because of potential tool hallucinations. Tools MUST BE EXACTLY IDENTICAL AS THE TOOLS THAT EXIST
- **`model`**(optional): The AI model set to `GPT-4.1` to use when running the prompt. If not specified, the currently selected model in model picker is then used

### Body With Chat Mode Instructions

This is where you provide specific prompts, guidelines, or any other relevant information that you want the AI to follow when in this chat mode. You can also reference instructions files by using Markdown links. The chat mode instructions will complement whatever is specified in the chat prompt.

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
