# Project Initialization Prompt

## Purpose
This prompt template guides AI agents through the complete initialization of a new project, ensuring all memory bank components are properly established and cross-agent coordination is configured.

## Template Usage
Use this prompt when starting a new project or when memory bank needs complete regeneration.

## Automation Task
- **VS Code Task:** Initialize Memory Bank
- **Script:** `scripts/memory-bank-init.sh`

## Prompt Template

```
# Project Initialization Request

## Project Overview
**Project Name**: [Insert project name]
**Project Type**: [Web application | Mobile app | CLI tool | Library | API | Desktop application | etc.]
**Primary Technology**: [Primary programming language/framework]
**Target Users**: [Brief description of intended users]

## Core Requirements
**Problem Statement**: [What problem does this project solve?]
**Key Features**: [3-5 primary features or capabilities]
**Success Criteria**: [How will success be measured?]

## Technical Context
**Technology Stack**: [Languages, frameworks, databases, tools]
**Development Environment**: [OS, IDE, required tools]
**Deployment Target**: [Local | Cloud | Mobile stores | Package registry | etc.]
**Performance Requirements**: [Any specific performance needs]

## Constraints and Preferences
**Timeline**: [Project timeline or urgency level]
**Team Size**: [Solo developer | Small team | Large team]
**Experience Level**: [Beginner | Intermediate | Advanced]
**Coding Preferences**: [Style guides, patterns, conventions]

## AI Agent Coordination
**Primary AI Tools**: [Cline | GitHub Copilot | CLI Codex | Other tools]
**Workflow Preferences**: [Planning approach, development style, testing approach]
**Documentation Style**: [Detail level, format preferences]

## Special Requirements
**Security Needs**: [Authentication, data protection, compliance requirements]
**Accessibility**: [WCAG compliance level, specific accessibility needs]
**Internationalization**: [Multi-language support requirements]
**Integration**: [External APIs, existing systems, third-party services]

## Memory Bank Setup Request
Please initialize the complete memory bank structure for this project:

1. **Project Brief**: Create comprehensive project definition
2. **Product Context**: Define user experience goals and product vision
3. **System Patterns**: Establish architectural patterns and technical decisions
4. **Tech Context**: Document technology stack and development environment
5. **Active Context**: Set up current work tracking and immediate objectives
6. **Progress Tracking**: Initialize progress monitoring and milestone tracking

## Cross-Agent Instructions
Configure all AI agent instruction files for:
- Consistent coding patterns and conventions
- Shared quality standards and validation
- Coordinated workflow and handoff procedures
- Unified documentation and communication standards

## Validation Checklist
After initialization, verify:
- [ ] All memory bank files are complete and consistent
- [ ] AI agent instructions align with project requirements
- [ ] Technology stack is properly documented
- [ ] Development workflow is clearly defined
- [ ] Quality standards are established
- [ ] Cross-agent coordination is configured
```

## AI Agent Instructions

### For Cline
When using this prompt:
1. Read the entire prompt and extract all requirements
2. Create complete memory bank files using provided information
3. Ensure all files follow MarkdownLint strict mode
4. Cross-reference all files for consistency
5. Update .clinerules if needed for project-specific patterns

### For GitHub Copilot
When memory bank is initialized:
1. Use established patterns for code suggestions
2. Follow documented coding standards and conventions
3. Align suggestions with project architecture
4. Support documented user experience goals

### For CLI Codex
When supporting initialized project:
1. Generate commands compatible with documented tech stack
2. Follow established automation patterns
3. Support documented development workflow
4. Integrate with project build and deployment processes

## Success Indicators
- Memory bank provides complete project context
- All AI agents can operate effectively using memory bank information
- Project patterns and conventions are clearly established
- Development workflow is documented and repeatable
- Quality standards are defined and enforceable

## Common Variations

### Minimal Project
For simple projects, focus on:
- Core functionality and basic architecture
- Essential development tools and workflow
- Simple quality standards and documentation

### Enterprise Project
For complex projects, include:
- Detailed architecture and design patterns
- Comprehensive security and compliance requirements
- Advanced CI/CD and deployment strategies
- Extensive documentation and governance

### Experimental Project
For research or experimental projects:
- Flexible architecture allowing for changes
- Emphasis on learning and iteration
- Lightweight documentation that can evolve
- Focus on exploration and validation

## Integration Notes

### Memory Bank Files
This prompt should result in updates to:
- `projectbrief.md` - Complete project definition
- `productContext.md` - User experience and product goals
- `systemPatterns.md` - Architecture and technical patterns
- `techContext.md` - Technology stack and environment
- `activeContext.md` - Current work focus and objectives
- `progress.md` - Initial project status and milestones

### Cross-Agent Coordination
Ensure all instruction files are updated:
- `shared.instructions.md` - Common standards for all agents
- `cline.instructions.md` - Cline-specific workflow patterns
- `copilot.instructions.md` - Copilot integration guidelines
- `codex.instructions.md` - CLI automation patterns

### Quality Assurance
Verify initialization completeness:
- All required information is captured
- Memory bank files are consistent and cross-referenced
- AI agents have sufficient context for effective operation
- Project can proceed with development immediately
