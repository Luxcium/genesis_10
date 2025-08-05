---
mode: 'agent'
model: GPT-4.1
tools: ['shell']
description: 'Initialize placeholder directories for shared libraries, web assets, and Python modules.'
---
Use the **Initialize Placeholder Directories** task to run `scripts/init-placeholder-dirs.sh`.
This ensures `lib/`, `web/`, and `python/` exist with `.gitkeep` files for future development.

Steps:
1. Run the VS Code task or execute `bash scripts/init-placeholder-dirs.sh`.
2. Verify the directories and `.gitkeep` files were created.
3. Update documentation and memory bank if the directory structure changes.

For guidelines on these directories, see [placeholder-dirs.instructions.md](../instructions/placeholder-dirs.instructions.md).
