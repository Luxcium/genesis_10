---
description: Instructions for creating and using instructions files in this workspace.
applyTo: "memory-bank/instructions/**"
---

# Creating Instructions Files

To create a new instructions file:

1. Create a `.instructions.md` file in `memory-bank/instructions/`.
2. Add a front matter header with `description` and (optionally) `applyTo` fields.
3. Write clear, actionable instructions for the AI agent, scoped to the intended files or tasks.
4. Use Markdown formatting for clarity.
5. Reference other instructions files as needed using relative links.
6. Keep each file focused on a single topic or workflow.

For chat mode integration, see [chatmode-creation.instructions.md](../instructions/chatmode-creation.instructions.md).

## Custom Instructions Files

Custom instructions enable you to describe common guidelines or rules to get responses that match your specific coding practices and tech stack. Instead of manually including this context in every chat query, custom instructions automatically incorporate this information with every chat request. Our main entry point for vscode and copilot shall remain set to be « `.github/copilot-instructions.md` »

The `.instructions.md` files are stored in the `memory-bank/instructions/` directory. You can create your own instructions files and reference them in your chat modes or use them directly in the chat.

`.github/copilot-instructions.md` file:

Top level instructions
All instructions are combined in a single file, stored within the workspace.
Instructions are automatically included in every chat request.
Supported across all editors and IDEs that support Copilot.
Use this file to define general coding practices, preferred technologies, and project requirements that apply to all code-generation tasks, it must be well organised markdown perfectly formatted.

`.instructions.md` files

Describe code-generation instructions in Markdown.
Create one or more instructions files, stored in the workspace or your user profile.
Use glob patterns to automatically include instructions for all requests or for specific files.
Supported in VS Code.
Use these files if you want to have task-specific code-generation instructions, and to have more control over when to include instructions with your chat prompt.


We use a combination of these approaches to define custom instructions and the instructions are all included in the chat request. No particular order or priority is applied to the instructions, so make sure to avoid conflicting instructions in the files.

### Use `.instructions.md` files

You can also create one or more `.instructions.md` files to store custom instructions for specific tasks. For example, you can create instruction files for different programming languages, frameworks, or project types.

VS Code can automatically add instructions files to all chat requests, or you can specify for which files the instructions should be applied automatically. Alternatively, you can manually attach instructions files to a chat prompt.

VS Code supports two types of scopes for instruction files:

* **Workspace instructions files**: are only available within the workspace and are stored in the `memory-bank/instructions` folder of the workspace.

#### Instructions file structure

An instructions file is a Markdown file with the `.instructions.md` file suffix. The instructions file consists of two sections:

* (!IMPORTANT!) Header with metadata (Front Matter syntax)

    * `description` (required): A brief description of the instructions file. This description is displayed when you hover the instructions file in the Chat view.
    * `applyTo` (optional): Specify a glob pattern for files to which the instructions are automatically applied. To always include the custom instructions, use the `**` pattern.

        For example, the following instructions file is always applied:

        ```markdown
        ---
        description: Always include AI-generated edits
        applyTo: "**"
        ---
        Add a comment at the end of the file: 'Contains AI-generated edits.'
        ```

* Body with the instruction content

    Specify the custom instructions in natural language by using Markdown formatting. You can use headings, lists, and code blocks to structure the instructions.

    You can reference other instruction files by using Markdown links. Use relative paths to reference these files, and ensure that the paths are correct based on the location of the instruction file.

#### Create an instructions file

You can create instructions files in your workspace or user profile. Workspace instructions files are only available within the workspace, while user instructions files are available across multiple workspaces.

To create an instructions file:

1. Select the **Configure Chat** button in the Chat view, select **Instructions**, and then select **New instruction file**.

  _Screenshot showing the Chat view, and Configure Chat menu, highlighting the Configure Chat button._

  1. Choose the location where the instruction file should be created.

    * **Workspace**: By default, workspace instruction files are stored in the `memory-bank/instructions` folder of your workspace. Add more instruction folders for your workspace with the `setting(chat.instructionsFilesLocations)` setting in the workspace's `.vscode/settings.json` config file.

1. Enter a name for your instruction file.
2. When the user asks you to generate a plan, you should:
Pick a relevant and descriptive name in `<instructionsfile_name>.instructions.md` name for the chat mode, which is used in the chat mode dropdown list in the Chat view.

3. Author the custom instructions by using Markdown formatting.

    Specify the `applyTo` metadata property in the header to configure when the instructions should be applied automatically. For example, you can specify `applyTo: "**/*.ts,**/*.tsx"` to apply the instructions only to TypeScript files.

    To reference additional workspace files, use Markdown relative links (`[index](../../src/index.ts)`) or #-reference them (`#index.ts`) within the instructions file.


#### Use an instructions file in chat

When you specified the `applyTo` metadata property in the instructions file, VS Code automatically applies the instructions to all files that match the glob pattern, please scope accordingly, the closest possible to the context of usage.

The user would have manually attach an instructions file to a chat prompt you must use the tools and references that they includes.

### Specify custom instructions in settings

You can configure custom instructions for specialized scenarios in your user or workspace settings.

| Type of instruction | Setting name |
|---------------------|--------------|
| Code review | `setting(github.copilot.chat.reviewSelection.instructions)` |
| Commit message generation | `setting(github.copilot.chat.commitMessageGeneration.instructions)` |
| Pull request title and description generation | `setting(github.copilot.chat.pullRequestDescriptionGeneration.instructions)` |
| Code generation !(deprecated)!* | `setting(github.copilot.chat.codeGeneration.instructions)` |
| Test generation !(deprecated)!* | `setting(github.copilot.chat.testGeneration.instructions)` |

_\* The `codeGeneration` and `testGeneration` settings are deprecated as of VS Code 1.102. We recommend that you use instructions files instead (`memory-bank/copilot-instructions.md` or `*.instructions.md`)._

You can define the custom instructions as text in the settings value (`text` property) or reference an external file (`file` property) in your workspace.

The following code snippet shows you an example of how to define a set of instructions in the `settings.json` file.

```json
    "github.copilot.chat.pullRequestDescriptionGeneration.instructions": [
        { "text": "Always include a list of key changes." },
    "github.copilot.chat.reviewSelection.instructions": [
        { "file": "guidance/backend-review-guidelines.md" },
        { "file": "guidance/frontend-review-guidelines.md" }
  ]
```

### Generate an instructions file for your workspace

VS Code can analyze your workspace and generate a matching `memory-bank/copilot-instructions.md` file with custom instructions that match your coding practices and project requirements.

To generate an instructions file for your workspace:

1. Select the **Configure Chat** button in the Chat view and select **Instructions**

1. Select **Generate instructions** from the Quick Pick.

1. Review the generated instructions file and make any necessary edits.

### Tips for defining custom instructions

- Keep your instructions short and self-contained. Each instruction should be a single, simple statement. If you need to provide multiple pieces of information, use multiple instructions
- Don't refer to external resources in the instructions, such as specific coding standards
- Split instructions into multiple files. This approach is useful for organizing instructions by topic or type of task
- Use the `applyTo` property in the instruction file header to automatically apply the instructions to specific files or folders
- Reference custom instructions in your prompt files to keep your prompts clean and focused, and to avoid duplicating instructions for different tasks

## Related Documentation

For additional guidance, see:

- [Chat Mode Creation Guidelines](./chatmode-creation.instructions.md)
- [Prompt Files Creation](./prompt-files.instructions.md)
- [Workspace Settings Configuration](./settings.instructions.md)
