# Prompt: Create a New Instructions File

You are tasked with generating a new `.instructions.md` file in `memory-bank/instructions/` for a specified topic, workflow, or coding standard.

**Follow these steps:**

1. **Front Matter Header**
   - Begin with a front matter block:
     ```markdown
     ---
     description: "Brief, clear summary of this file’s purpose"
     applyTo: "glob pattern for file auto-application (optional, recommended)"
     ---
     ```
   - The `description` is required.
   - The `applyTo` field is optional but should be used for targeted application.

2. **File Structure**
   - Use a single top-level header (`#`) matching the topic.
   - Provide clear, actionable instructions as numbered or bulleted lists.
   - Include code examples in fenced code blocks if relevant.
   - Reference related instructions or prompt files using relative links.
   - Add a "Related Documentation" section at the end, linking to:
     - Other instructions files (e.g., `./instructions-files.instructions.md`)
     - Prompt files (e.g., `../prompts/make-new-instructions.prompt.md`)
     - Core Memory Bank files if relevant

3. **Content Guidelines**
   - Be concise, precise, and unambiguous.
   - Write for both AI agents and human developers.
   - Ensure instructions are directly actionable and testable.
   - Use project terminology and formatting conventions.

4. **Quality Checklist**
   - Front matter is present and correct.
   - Only one `#` header per file.
   - All links are valid and relative.
   - Instructions are specific and scoped to the topic.
   - File name is descriptive and uses kebab-case.

**References:**
- [instructions-files.instructions.md](../instructions/instructions-files.instructions.md)
- [memory-bank-core.instructions.md](../instructions/memory-bank-core.instructions.md)
- [README.md](../../README.md)

**After creation:**
- Update `activeContext.md` and `progress.md` to log the new file.
- Ensure consistency with the Memory Bank protocol.

---

Use this prompt as a preprompt for any new `.instructions.md` file request, adapting the content to the given topic or scope.
