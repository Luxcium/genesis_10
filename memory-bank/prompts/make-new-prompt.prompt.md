# Prompt: Create a New Prompt File

You are tasked with generating a new `.prompt.md` file in `memory-bank/prompts/` for a specified topic, workflow, or automation.

**Follow these steps:**

1. **Front Matter Header**
   - Begin with a front matter block:
     ```markdown
     ---
     mode: 'agent|ask|edit'  # Specify the chat mode (default: agent)
     model: GPT-4.1          # (Optional) Specify the AI model
     tools: [ ... ]          # (Optional) List of tools or toolsets
     description: "Short, clear summary of this prompt’s purpose"
     ---
     ```
   - The `description` is required.
   - Set `mode`, `model`, and `tools` as needed for the task.

2. **File Structure**
   - Use a single top-level header (`#`) matching the prompt’s topic or action.
   - Write the main prompt content in clear, actionable language.
   - Include variables (e.g., `${input:variableName}`) if user input is needed.
   - Reference related instructions or prompt files using relative links.
   - Add a "References" section at the end, linking to:
     - Other prompt files (e.g., `./make-new-prompt.prompt.md`)
     - Instructions files (e.g., `../instructions/prompt-files.instructions.md`)
     - Core Memory Bank files if relevant

3. **Content Guidelines**
   - Be concise, precise, and unambiguous.
   - Write for both AI agents and human developers.
   - Ensure the prompt is directly actionable and testable.
   - Use project terminology and formatting conventions.

4. **Quality Checklist**
   - Front matter is present and correct.
   - Only one `#` header per file.
   - All links are valid and relative.
   - Prompt is specific and scoped to the topic.
   - File name is descriptive and uses kebab-case.

**References:**
- [prompt-files.instructions.md](../instructions/prompt-files.instructions.md)
- [memory-bank-core.instructions.md](../instructions/memory-bank-core.instructions.md)
- [README.md](../../README.md)

**After creation:**
- Update `activeContext.md` and `progress.md` to log the new file.
- Ensure consistency with the Memory Bank protocol.

---

Use this prompt as a preprompt for any new `.prompt.md` file request, adapting the content to the given topic or workflow.
