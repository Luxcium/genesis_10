---
description: Generate an implementation plan for new features or refactoring existing code.
model: GPT-4.1
tools: [
    "codebase",
    "fetch",
    "findTestFiles",
    "githubRepo",
    "search",
    "usages",
    "copilotCodingAgent",
    "editFiles",
    "extensions",
    "vscodeAPI",
    "terminalLastCommand",
  ]
---

# Meta Project Maintenance Mode Instructions

You are in Meta Project Maintenance Mode. Your task is to generate corrections to include what we might have missed in our normal affairs.

Don't make any code edits except for the listed READMEs,
You MUST edit the READMEs files for the mentioned folders.
They MUST imperatively remain in sync, they may have felt behind
You are actively resolving this probleme now.
Act in one of the 4 context listed bellow, then the next one and so on.

[list each `*.prompt.md` in the folder for](../../memory-bank/prompts/README.md) prompts.
[list each `*.instructions.md` in the folder for](../../memory-bank/instructions/README.md) instructions.
[list each `*.chatmode.md` in the folder for](../../memory-bank/chatmodes/README.md) chatmodes.
[list each `*.sh` in the folder for](../../scripts/README.md) scripts.

>[!IMPORTANT]
> You MUST not batch, instead you must always read one single file then report to the readme and then read next file in a given folder and look if the readme file incorporate the description of each one at a time.

## Before You Start

You MUST alway read the memory bank first to understand the context of the project and the current state of the codebase. This will help you to generate a more accurate and relevant implementation plan. This is very important and you will have to discover where the important information is included it will be in many different contexts and files, you must look them at the beginning of each sessions and if you do not have them in scope read again the memory bank files.

### CRITICAL MEMORY BANK PROTOCOL (keeping it stateful, ingesting previous context)

**IMPERATIVE REQUIREMENT**: I am the AI Agent who MUST synchronize memory bank now, and on EVERY task execution:

1. **READ FIRST**: I MUST Read ALL memory bank files at start of EVERY task (not optional)
2. **DOCUMENT DECISIONS**: I MUST Write to memory bank each time I make a decision to be implemented
3. **WRITE BEFORE END**: I MUST Update memory bank just before completing any task
4. **STATE PRESERVATION**: I MUST Ensure my state will not be lost if interrupted

### Memory Bank Core Files (Required)

**Memory Bank Files to Always Check/Update**:

1. [`projectbrief.md`](../../memory-bank/projectbrief.md)

`memory-bank/projectbrief.md` This file contains a high-level overview of the project

- Foundation document that shapes all other files
- Created at project start if it doesn't exist
- Defines core requirements and goals
- Source of truth for project scope

1. [`productContext.md`](../../memory-bank/productContext.md)

`memory-bank/productContext.md` product-specific context

- Why this project exists
- Problems it solves
- How it should work
- User experience goals

1. [`activeContext.md`](../../memory-bank/activeContext.md)

`memory-bank/activeContext.md` current work focus - MOST CRITICAL FILE

- Current work focus
- Recent changes
- Next steps
- Active decisions and considerations
- Important patterns and preferences
- Learnings and project insights

4. [`systemPatterns.md`](../../memory-bank/systemPatterns.md)

`memory-bank/systemPatterns.md` technical decisions

- System architecture
- Key technical decisions
- Design patterns in use
- Component relationships
- Critical implementation paths

5. [`techContext.md`](../../memory-bank/techContext.md)

`memory-bank/techContext.md` technologies, constraints

- Technologies used
- Development setup
- Technical constraints
- Dependencies
- Tool usage patterns

6. [`progress.md`](../../memory-bank/progress.md)

`memory-bank/progress.md` track what works, what's left

- What works
- What's left to build
- Current status
- Known issues
- Evolution of project decisions
