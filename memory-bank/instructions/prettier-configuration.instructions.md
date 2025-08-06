---
description: "Instructions for configuring Prettier and its plugins in this project."
applyTo: "**/.prettier*,package.json"
---

# Prettier Configuration

- Set up, maintain, and troubleshoot Prettier and its plugins for this project.
- Avoid installing npm packages or initializing a TypeScript project during configuration.
- Generate the configuration files exactly as described.

## Initializing Prettier Configuration (One-Time Setup)

1. **Create `.prettierrc` in the project root**
  - Use the following content:
    ```json
    {
     "plugins": [
      "prettier-plugin-packagejson",
      "@ianvs/prettier-plugin-sort-imports",
      "prettier-plugin-prisma",
      "prettier-plugin-tailwindcss"
     ],
     "overrides": [
      {
        "files": "package.json",
        "options": { "parser": "json" }
      }
     ]
    }
    ```
  - **Note:** Always list `prettier-plugin-tailwindcss` last in the plugins array.

2. **Create `.prettierignore` in the project root**
  - Add common ignore patterns, for example:
    ```
    node_modules
    dist
    build
    .next
    coverage
    ```

3. **Do not install npm packages yet**
  - Only reference the plugins in the config files.
  - When ready, install with:
    ```sh
    npm install -D prettier@latest prettier-plugin-tailwindcss@latest prettier-plugin-prisma@latest prettier-plugin-packagejson@latest @ianvs/prettier-plugin-sort-imports@latest
    # or
    pnpm add -D prettier@latest prettier-plugin-tailwindcss@latest prettier-plugin-prisma@latest prettier-plugin-packagejson@latest @ianvs/prettier-plugin-sort-imports@latest
    ```

## Maintaining and Updating Prettier Configuration

- **Update plugin versions** in `.prettierrc` as new versions are released or project needs change.
- **Add or remove plugins** as required by the evolving codebase, always keeping `prettier-plugin-tailwindcss` last.
- **Adjust `.prettierignore`** to match new build outputs or directories as the project grows.
- **Document any changes** in `activeContext.md` and `progress.md` for traceability.

## Troubleshooting and Fixing Prettier Issues in VS Code

If you encounter issues with Prettier formatting or plugin errors in VS Code:

1. **Check Prettier and Plugin Installation**
  - Ensure all plugins listed in `.prettierrc` are installed in your workspace (`node_modules`).
  - If missing, run the install command above.

2. **Verify VS Code Extensions**
  - Make sure the official Prettier extension is installed and enabled.
  - If using other formatting extensions, check for conflicts and disable as needed.

3. **Reload/Restart VS Code**
  - Sometimes VS Code needs to be reloaded to pick up new plugins or config changes.

4. **Check for Plugin Order**
  - Confirm `prettier-plugin-tailwindcss` is last in the plugins array.

5. **Review Output and Logs**
  - Open the VS Code Output panel and select "Prettier" to view error messages.
  - Address any missing dependencies or misconfigurations as indicated.

6. **Update or Reinstall Extensions**
  - If issues persist, try updating or reinstalling the Prettier extension and plugins.

## Related Documentation
- [prompt-files.instructions.md](../instructions/prompt-files.instructions.md)
- [memory-bank-core.instructions.md](../instructions/memory-bank-core.instructions.md)
- [README.md](../../README.md)

## After creation and maintenance
- Update `activeContext.md` and `progress.md` to log new configuration files or changes.
- Ensure consistency with the Memory Bank protocol.

---

Use these instructions whenever you need to (re)generate, maintain, or troubleshoot Prettier configuration for this project.
