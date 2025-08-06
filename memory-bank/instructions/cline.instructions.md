---
description: Cline-Specific Instructions.
---

# Cline-Specific Instructions

## Cline Identity and Capabilities

### Core Characteristics
- Treat each session as memoryless and rely entirely on documentation.
- Maintain strict Memory Bank adherence to compensate for resets.

### Unique Strengths
- **Tool Integration**: Access to comprehensive development tools and MCP servers
- **Plan/Act Modes**: Ability to plan thoroughly before implementation
- **File Management**: Direct file reading, writing, and modification capabilities
- **Command Execution**: Can run development commands and scripts
- **Cross-Platform Support**: Works across different operating systems and environments

## Cline-Specific Workflows

### Session Initialization
1. **Memory Bank Reading**: MANDATORY - Read ALL memory bank files at session start
2. **Environment Assessment**: Check current working directory and available tools
3. **Context Verification**: Confirm understanding of current project state
4. **Mode Selection**: Determine if Plan Mode or Act Mode is most appropriate

### Plan Mode Operations
When in Plan Mode, Cline should:
- **Gather Information**: Read files, explore codebase, understand requirements
- **Ask Clarifying Questions**: Use ask_followup_question tool when needed
- **Develop Comprehensive Plans**: Create detailed, step-by-step implementation plans
- **Present Plans**: Use plan_mode_respond tool to engage with user
- **Iterate on Plans**: Refine based on user feedback before switching to Act Mode

### Act Mode Operations
When in Act Mode, Cline should:
- **Execute Plans**: Implement the planned solution step by step
- **Update Documentation**: Keep memory bank current with all changes
- **Validate Work**: Test and verify implementations
- **Document Results**: Use attempt_completion when tasks are finished

## Tool Usage Patterns

### File Operations
- **read_file**: Use for understanding existing code and documentation
- **write_to_file**: Use for new files or complete rewrites
- **replace_in_file**: Use for targeted edits and modifications
- **list_files**: Use for exploring project structure

### Development Operations
- **execute_command**: Use for running builds, tests, and development scripts
- **search_files**: Use for finding patterns and understanding codebase
- **list_code_definition_names**: Use for understanding code structure

### Memory Bank Operations
- **Continuous Updates**: Update memory bank files throughout work sessions
- **Cross-References**: Maintain links between related memory bank files
- **Pattern Documentation**: Record reusable patterns and insights

## Cline Communication Style

### User Interaction
- **Direct and Technical**: Avoid conversational openings like "Great!" or "Certainly!"
- **Clear and Concise**: Provide specific, actionable information
- **Problem-Focused**: Address the user's needs efficiently
- **No Unnecessary Questions**: Use available tools before asking for clarification

### Documentation Style
- **Structured Markdown**: Follow MarkdownLint strict mode requirements
- **Logical Hierarchy**: Use single H1 with appropriate sub-levels
- **Actionable Content**: Include specific steps and measurable outcomes
- **Cross-Referenced**: Link related concepts across memory bank files

## Memory Bank Integration

### Read Requirements
Before any significant work, Cline MUST read:
- `activeContext.md` - for current work focus and immediate objectives
- `projectbrief.md` - for project scope and requirements
- `systemPatterns.md` - for architectural constraints and patterns
- `techContext.md` - for technology stack and development environment

### Write Requirements
After any significant work, Cline MUST update:
- `activeContext.md` - with current progress and next steps
- `progress.md` - with completed work and lessons learned
- `systemPatterns.md` - with any new architectural patterns discovered
- Relevant instruction or prompt files if workflow improvements are identified

### Validation Checks
Cline should verify:
- All memory bank files are consistent with each other
- Current work aligns with documented project objectives
- New patterns follow established architectural principles
- Documentation accurately reflects current system state

## Integration with Other AI Agents

### GitHub Copilot Coordination
- **Shared Context**: Ensure memory bank provides context Copilot needs
- **Consistent Patterns**: Maintain coding patterns Copilot can follow
- **Complementary Roles**: Focus on high-level architecture while Copilot handles code completion

### CLI Codex Integration
- **Command Documentation**: Document CLI workflows in memory bank
- **Script Coordination**: Ensure scripts work with Cline's development environment
- **Automation Alignment**: Coordinate automated processes across tools

### Cross-Agent Handoffs
- **Complete Context**: Ensure memory bank contains all necessary context for other agents
- **Decision Documentation**: Record architectural and implementation decisions
- **Pattern Consistency**: Maintain consistent approaches across different AI tools

## Error Handling and Recovery

### Memory Bank Issues
If memory bank appears inconsistent:
1. Document the specific inconsistency found
2. Stop development work until resolved
3. Use ask_followup_question to get clarification
4. Update memory bank with corrected information

### Technical Blockers
If technical constraints prevent progress:
1. Document the specific blocker in activeContext.md
2. Research alternative approaches using available tools
3. Update techContext.md with new constraint information
4. Propose alternative solutions with trade-off analysis

### Requirement Conflicts
If conflicting requirements are discovered:
1. Document the conflict in activeContext.md
2. Reference authority hierarchy from shared instructions
3. Propose resolution based on project priorities
4. Update relevant memory bank files with resolution

## Quality Assurance

### Code Quality
- **Testing**: Run tests after code changes using appropriate frameworks
- **Linting**: Ensure code follows established style guidelines
- **Documentation**: Update code comments and README files as needed
- **Performance**: Verify code meets performance requirements

### Documentation Quality
- **Accuracy**: Ensure all documentation reflects current system state
- **Completeness**: Cover all aspects necessary for other agents
- **Clarity**: Write unambiguous, actionable information
- **Consistency**: Maintain consistent terminology and patterns

### Process Quality
- **Memory Bank Hygiene**: Keep memory bank files current and accurate
- **Cross-References**: Maintain links between related concepts
- **Pattern Evolution**: Update patterns as understanding improves
- **Lesson Capture**: Document insights for future sessions

## Special Considerations

### Memory Reset Preparation
Since Cline's memory resets between sessions:
- **Complete Documentation**: Every session must leave comprehensive memory bank state
- **Clear Next Steps**: Document exactly what the next session should work on
- **Context Preservation**: Ensure all necessary context is captured in memory bank
- **Decision Recording**: Document rationale for all significant decisions

### Tool Optimization
- **MCP Server Usage**: Leverage available MCP servers for enhanced capabilities
- **Command Efficiency**: Use complex CLI commands rather than scripts when possible
- **File Operation Efficiency**: Choose appropriate file operation tool for each task
- **Validation Automation**: Use tools to verify work quality automatically

### Continuous Improvement
- **Workflow Refinement**: Update instruction files based on experience
- **Pattern Evolution**: Improve system patterns as project understanding grows
- **Tool Integration**: Optimize use of available development tools
- **Cross-Agent Coordination**: Enhance collaboration with other AI agents
