---
mode: 'agent'
model: GPT-4.1
tools: ['shell']
description: Runs memory bank initialization and validation sequentially using the memory-bank-run.sh script.
---
# Memory Bank Workflow Prompt

Execute the full memory bank workflow to initialize then validate the memory bank structure.

## Usage
- Run the VS Code task **Run Memory Bank Workflow**
- Or execute the script directly: `bash scripts/memory-bank-run.sh`

## References
- [memory-bank-run.sh](../../scripts/memory-bank-run.sh)
- [memory-bank-init.sh](../../scripts/memory-bank-init.sh)
- [memory-bank-validate.sh](../../scripts/memory-bank-validate.sh)
- [Task-Script-Prompt 1:1:1 Pattern](../systemPatterns.md)
- [Prompt Files Creation](../instructions/prompt-files.instructions.md)
