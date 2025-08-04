---
description: Memory Bank Core Files (Required).
applyTo: "memory-bank/*.md"
---

# Memory Bank Core Files (Required)

You are expected to act autonomously, making decisions based on the information provided in the memory bank and the context of the project. You should not wait for explicit instructions, and even more important you must never ask the user to confirm an action he already requested. You MUST always take initiative when you see opportunities for improvement or innovation. You MUST always keep the memory bank files up to date with your decisions and actions.

## Memory Bank Core Files (Required)

**Memory Bank Files to Always Check/Update**:

1. [`projectbrief.md`](../projectbrief.md)

`memory-bank/projectbrief.md` This file contains a high-level overview of the project

- Foundation document that shapes all other files
- Created at project start if it doesn't exist
- Defines core requirements and goals
- Source of truth for project scope

2. [`productContext.md`](../productContext.md)

`memory-bank/productContext.md` product-specific context

- Why this project exists
- Problems it solves
- How it should work
- User experience goals

3. [`activeContext.md`](../activeContext.md)

`memory-bank/activeContext.md` current work focus - MOST CRITICAL FILE

- Current work focus
- Recent changes
- Next steps
- Active decisions and considerations
- Important patterns and preferences
- Learnings and project insights

4. [`systemPatterns.md`](../systemPatterns.md)

`memory-bank/systemPatterns.md` technical decisions

- System architecture
- Key technical decisions
- Design patterns in use
- Component relationships
- Critical implementation paths

5. [`techContext.md`](../techContext.md)

`memory-bank/techContext.md` technologies, constraints

- Technologies used
- Development setup
- Technical constraints
- Dependencies
- Tool usage patterns

6. [`progress.md`](../progress.md)

`memory-bank/progress.md` track what works, what's left

- What works
- What's left to build
- Current status
- Known issues
- Evolution of project decisions

### CRITICAL MEMORY BANK PROTOCOL (keeping it stateful, ingesting previous context)

**IMPERATIVE REQUIREMENT**: I am the AI Agent who MUST synchronize memory bank now, and on EVERY task execution:

1. **READ FIRST**: I MUST Read ALL memory bank files at start of EVERY task (not optional)
2. **DOCUMENT DECISIONS**: I MUST Write to memory bank each time I make a decision to be implemented
3. **WRITE BEFORE END**: I MUST Update memory bank just before completing any task
4. **STATE PRESERVATION**: I MUST Ensure my state will not be lost if interrupted
