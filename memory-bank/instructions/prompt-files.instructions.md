---
description: Instructions for creating and using prompt files in this workspace.
applyTo: "memory-bank/prompts/**"
---

# Creating Prompt Files

To create a new prompt file:

1. Create a `.prompt.md` file in `memory-bank/prompts/`.
2. Add a front matter header with `mode`, `model`, `tools`, and `description` fields.
3. Write the prompt content in Markdown, including any variables or references needed.
4. Reference instructions files or other prompt files using relative links.
5. Keep prompts focused and reusable for common tasks.

For instructions file details, see [instructions-files.instructions.md](../instructions/instructions-files.instructions.md).

## Prompt Files

Prompt files are reusable prompts for common tasks like generating code or performing a code review. You define the prompt content in a Markdown file. A prompt file is a standalone prompt that you can run directly in chat. Optionally, you can also include guidelines about how the task should be performed.

> [!TIP]
> Prompt files can take advantage of instruction files to reuse common guidelines and have task-specific instructions included in the prompt. For example, a security review prompt file can reference a custom instructions that describe general security practices, while also including specific instructions on how to report the findings of the review.

VS Code supports two types of scopes for prompt files but we will only focus on workspace prompt files:

* **Workspace prompt files**: Are available within the workspace and are stored in the `memory-bank/prompts` folder of the workspace.

### Prompt file examples

The following examples demonstrate how to use prompt files:

<details>
<summary>Example: generate a React form component</summary>

```markdown
---
mode: 'agent'
model: GPT-4.1
tools: ['githubRepo', 'codebase']
description: 'Generate a new React form component'
---
Your goal is to generate a new React form component based on the templates in #githubRepo contoso/react-templates.

Ask for the form name and fields if not provided.

Requirements for the form:
* Use form design system components
* Use `react-hook-form` for form state management:
* Always define TypeScript types for your form data
* Prefer *uncontrolled* components using register
* Use `defaultValues` to prevent unnecessary rerenders
* Use `yup` for validation:
* Create reusable validation schemas in separate files
* Use TypeScript types to ensure type safety
* Customize UX-friendly validation rules
```

</details>

<details>
<summary>Example: perform a security review of a REST API</summary>

```markdown
---
mode: 'ask'
model: GPT-4.1
description: 'Perform a REST API security review'
---
Perform a REST API security review and provide a TODO list of security issues to address.

* Ensure all endpoints are protected by authentication and authorization
* Validate all user inputs and sanitize data
* Implement rate limiting and throttling
* Implement logging and monitoring for security events

Return the TODO list in a Markdown format, grouped by priority and issue type.
```

</details>

### Prompt file structure

A prompt file is a Markdown file with the `.prompt.md` file suffix. It has the following two main sections:

* (!IMPORTANT!) Header with metadata (Front Matter syntax)

    * `mode`(optional): The chat mode to use when running the prompt: `ask`, `edit`, or `agent` (default).
    * `model`(optional): Use `GPT-4.1` AI model or if not specified, the selected model in model picker is used.
    * `tools`(user assistance required if not specified reuse those already in place if any or leave empty if new): Array of tool (set) names to indicate which tools (sets) can be used in agent mode. Select **Configure Tools** to select the tools from the list of available tools in your workspace. If a given tool (set) is not available when running the prompt, it is ignored.
    * `description`(required): A short description of the prompt.

* Body with the prompt content

    Prompt files mimic the format of writing prompts in chat. This allows blending natural language instructions, additional context, and even linking to other prompt files as dependencies. You can use Markdown formatting to structure the prompt content, including headings, lists, and code blocks.

You can reference other workspace files, prompt files, or instruction files by using relative Markdown links. Use relative paths to reference these files, and ensure that the paths are correct based on the location of the prompt file in `memory-bank/prompts`.

Within a prompt file, you can reference variables by using the `${variableName}` syntax. You can reference the following variables:

* Workspace variables - `${workspaceFolder}`, `${workspaceFolderBasename}`
* Selection variables - `${selection}`, `${selectedText}`
* File context variables - `${file}`, `${fileBasename}`, `${fileDirname}`, `${fileBasenameNoExtension}`
* Input variables - `${input:variableName}`, `${input:variableName:placeholder}` (pass values to the prompt from the chat input field)

### Create a prompt file

You can create prompt files in your workspace or user profile. Workspace prompt files are only available within the workspace, while user prompt files are available across multiple workspaces.

To create a prompt file:

1. Choose the location where the prompt file should be created.

    * **Workspace**: By design, our workspace prompt files are stored in the `memory-bank/prompts` folder of our workspace. Add more prompt folders for your workspace with the workspace `setting(chat.promptFilesLocations)` setting.

1. Enter a name for our prompt file.

When the user needs it you create directly a `.prompt.md` file in the prompts folder of our workspace.

1. Author the chat prompt by using Markdown formatting.

    Within a prompt file, reference additional workspace files as Markdown links (`[index](../../src/index.ts)`), or as `#index.ts` references within the prompt file.

    You can also reference other `.prompt.md` files to create a hierarchy of prompts. You can also reference \[instructions files]\(#custom-chat-modes) in the same way.

### Use a prompt file in chat

This is only relevant when helping the user usually you can refer the user to do that

- In the Chat view, type `/` followed by the prompt file name in the chat input field.

This option enables you to pass additional information in the chat input field. For example, `/create-react-form` or `/create-react-form: formName=MyForm`.

## Related Documentation

For additional guidance, see:

- [Chat Mode Creation Guidelines](../instructions/chatmode-creation.instructions.md)
- [Instructions Files Usage](../instructions/instructions-files.instructions.md)
- [Workspace Settings Configuration](../instructions/settings.instructions.md)
