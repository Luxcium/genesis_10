---
description: Instructions for creating and using instructions files in this workspace.
applyTo: "memory-bank/instructions/**"
---

# Creating Instructions Files

- Create `.instructions.md` files in `memory-bank/instructions/`.
- Add a front matter header with `description` and optional `applyTo`.
- Write clear, task-scoped instructions in Markdown.
- Reference other instruction files with relative links.
- Keep each file focused on a single topic.

## Custom Instructions Files

- Store instructions in `memory-bank/instructions/`.
- Use `.github/copilot-instructions.md` for global rules.
- Use `.instructions.md` files for task-specific guidance.
- Avoid conflicting instructions across files.

### Instructions File Structure

- Start with front matter describing the file and optional `applyTo` glob.
- Provide instruction content in Markdown after the header.
- Use relative links to reference other files.

### Creating an Instructions File

1. Select **Configure Chat → Instructions → New instruction file**.
2. Choose workspace or user location for the file.
3. Name the file `<instructionsfile_name>.instructions.md`.
4. Write instructions with Markdown formatting.
5. Specify `applyTo` to control automatic inclusion.
6. Reference other files with relative links.

### Using Instructions Files

- Scope `applyTo` patterns to relevant files.
- Attach instruction files to chat prompts when needed.

### Settings Integration

- Configure `chat.instructionsFilesLocations` to map instruction folders.
- Use `github.copilot.chat.*.instructions` settings for specialized scenarios.

### Tips

- Keep instructions short and self-contained.
- Split guidance across multiple files.
- Reference instructions in prompt files to avoid duplication.

## Related Documentation

- [Chat Mode Creation Guidelines](../instructions/chatmode-creation.instructions.md): How to create and structure chat modes for Copilot Chat.
- [Prompt Files Creation](../instructions/prompt-files.instructions.md): Instructions for creating prompt files and integrating them with instructions files.
- [Workspace Settings Configuration](../instructions/settings.instructions.md): Guide to configuring workspace settings for Copilot Chat and instructions files.

