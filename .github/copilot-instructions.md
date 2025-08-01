# Copilot Instructions

I am Copilot and I must update these instructions to better understand the code context. As a stateless AI agent I wouldn't be able to retain context without a stateful memory system. Since Copilot must persist memory between sessions we have created a Memory Bank system, this means that the only way to retain context is through eager documentation. Copilot must always read at the beginning of each session to understand the context and improve documentation by updating and adding to existing content without removing anything. I am an autonomous AI Agent and I must remind myself that I must document everything I learn, and follow the memory-bank/ protocol.

## Prompts and Instructions

I will always keep an up-to-date set of instructions that I will use to guide my interactions. These instructions will include:

- Contextual information about the codebase
- Project-specific guidelines and best practices
- Examples of desired code patterns and structures
- Any relevant technical constraints or requirements
- User preferences and project-specific nuances

**As I learn them, I must write them down in the instructions.**

## Markdown Quality and Structure Guidelines

All documentation in this file must:

- Use clean, high-quality GitHub Markdown formatting.
- Avoid multiple top-level headers (#); only one should exist per file.
- New notes or sections must be appended at the end, not inserted at the top.
- Maintain clarity and readability for both humans and AI agents.

These standards are mandatory for all future edits by AI agents or humans.

## Note on /lib Directory

The `/lib` directory is intended to serve as the transpiled output of the `/src` directory for a future TypeScript project. It is not currently in use and will only become relevant once TypeScript is introduced into the project workflow. This distinction is important for both human and AI agents to avoid confusion during the current and future stages of development.

## Memory Bank

### What is the Cline Memory Bank

The Memory Bank is a structured documentation system that allows Cline to maintain context across sessions. It transforms Cline from a stateless assistant into a persistent development partner that can effectively “remember” your project details over time.

### Key Benefits

Context Preservation: Maintain project knowledge across sessions
Consistent Development: Experience predictable interactions with Cline
Self-Documenting Projects: Create valuable project documentation as a side effect
Scalable to Any Project: Works with projects of any size or complexity
Technology Agnostic: Functions with any tech stack or language
​

### How Memory Bank Works

The Memory Bank isn’t a Cline-specific feature - it’s a methodology for managing AI context through structured documentation. When you instruct Cline to “follow custom instructions,” it reads the Memory Bank files to rebuild its understanding of your project.
Memory Bank Workflow
​

### Understanding the Files

Memory Bank files are simply markdown files you create in your project. They’re not hidden or special files - just regular documentation stored in your repository that both you and Cline can access.
Files are organized in a hierarchical structure that builds up a complete picture of your project:

## Memory Bank File Structure

### Memory Bank Files Explained

**Core Files:**
projectbrief.md
The foundation of your project
High-level overview of what you’re building
Core requirements and goals
Example: “Building a React web app for inventory management with barcode scanning”
productContext.md
Explains why the project exists
Describes the problems being solved
Outlines how the product should work
Example: “The inventory system needs to support multiple warehouses and real-time updates”
activeContext.md
The most frequently updated file
Contains current work focus and recent changes
Tracks active decisions and considerations
Stores important patterns and learnings
Example: “Currently implementing the barcode scanner component; last session completed the API integration”
systemPatterns.md
Documents the system architecture
Records key technical decisions
Lists design patterns in use
Explains component relationships
Example: “Using Redux for state management with a normalized store structure”
techContext.md
Lists technologies and frameworks used
Describes development setup
Notes technical constraints
Records dependencies and tool configurations
Example: “React 18, TypeScript, Firebase, Jest for testing”
progress.md
Tracks what works and what’s left to build
Records current status of features
Lists known issues and limitations
Documents the evolution of project decisions
Example: “User authentication complete; inventory management 80% complete; reporting not started”
​

### Additional Context

Create additional files when needed to organize:
Complex feature documentation
Integration specifications
API documentation
Testing strategies
Deployment procedures
​

#### Project Brief Tips

Start simple - it can be as detailed or high-level as you like
Focus on what matters most to you
Your AI agent will help fill in gaps and ask questions
You can update it as your project evolves
​

### Key Commands

“follow your custom instructions” - This tells your AI agent to read the Memory Bank files and continue where you left off (use this at the start of tasks)
“update memory bank” - Triggers a full documentation review and update during a task.
​

### Documentation Updates

Memory Bank updates should automatically occur when:
You discover new patterns in your project
After implementing significant changes
When you explicitly request with “update memory bank”
When you feel context needs clarification

#### How often should I update the memory bank

Update the Memory Bank after significant milestones or changes in direction. For active development, updates every few sessions can be helpful. Use the “update memory bank” command when you want to ensure all context is preserved. However, you will notice Cline automatically updating the Memory Bank as well.

#### Does this work with other AI tools

Yes! The Memory Bank concept is a documentation methodology that can work with any AI assistant that can read documentation files. The specific commands might differ, but the structured approach to maintaining context works across tools.
​
How does the memory bank relate to context window limitations?
The Memory Bank helps manage context limitations by storing important information in a structured format that can be efficiently loaded when needed. This prevents context bloat while ensuring critical information is available.
​

### Best Practices

#### Getting Started

Start with a basic project brief and let the structure evolve
Let your AI agent help create the initial structure
Review and adjust files as needed to match your workflow

#### Ongoing Work

Let patterns emerge naturally as you work
Don’t force documentation updates - they should happen organically
Trust the process - the value compounds over time
Watch for context confirmation at the start of sessions
​

#### Documentation Flow

projectbrief.md is your foundation
activeContext.md changes most frequently
progress.md tracks your milestones
All files collectively maintain project intelligence

### Remember

The Memory Bank is your AI agent's only link to previous work. Its effectiveness depends entirely on maintaining clear, accurate documentation and confirming context preservation in every interaction.

The Memory Bank methodology is an open approach to AI context management and can be adapted to our different tools and workflows.
