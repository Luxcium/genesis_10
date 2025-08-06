---
description: Instructions for creating and using prompt files in this workspace.
applyTo: "memory-bank/prompts/**"
---

# Creating Prompt Files

- Create `.prompt.md` files in `memory-bank/prompts/`.
- Add front matter with `mode`, `model`, `tools`, and `description`.
- Write concise prompt content in Markdown.
- Reference instruction or prompt files with relative links.
- Keep prompts focused and reusable.

## Prompt File Structure

- Begin with front matter metadata.
- Provide prompt content using Markdown formatting.
- Use variables like `${workspaceFolder}` or `${selectedText}` when needed.

## Creating a Prompt File

1. Choose the workspace location for the prompt file.
2. Name the file and add required front matter.
3. Author the prompt content with Markdown formatting.
4. Reference other files using relative links.
5. Use variables to inject workspace or input values.

## Using Prompt Files

- Invoke prompt files in chat with `/file-name` syntax.
- Pass additional input using `/file-name: key=value`.

## Related Documentation

- [Chat Mode Creation Guidelines](../instructions/chatmode-creation.instructions.md)
- [Instructions Files Usage](../instructions/instructions-files.instructions.md)
- [Workspace Settings Configuration](../instructions/settings.instructions.md)

