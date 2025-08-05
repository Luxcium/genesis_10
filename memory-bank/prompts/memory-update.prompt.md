# Memory Bank Update Prompt

## Purpose
This prompt template ensures comprehensive memory bank updates that maintain consistency across all files and provide complete context for AI agents.

## Template Usage
Use this prompt when explicitly updating memory bank, after major changes, or when preparing for session handoffs.

## Validation Task
- **VS Code Task:** Validate Memory Bank
- **Script:** `scripts/memory-bank-validate.sh`

## Prompt Template

```
# Memory Bank Update Request

## Update Trigger
**Update Type**: [Scheduled review | Major feature completion | Architecture change | Session handoff | User request]
**Scope**: [Full review | Targeted update | Consistency check | New information integration]
**Urgency**: [Immediate | Next session | End of week | Maintenance window]

## Current State Assessment
**Last Update**: [Date and scope of last memory bank update]
**Recent Changes**: [Major changes since last update]
**Known Inconsistencies**: [Any known issues or gaps in current documentation]
**New Requirements**: [Recently discovered or changed requirements]

## Review Checklist
**Project Brief Review**:
- [ ] Project scope and objectives are current
- [ ] Success criteria reflect current understanding
- [ ] Constraints and assumptions are accurate
- [ ] AI agent instructions are appropriate

**Product Context Review**:
- [ ] User needs and journeys are current
- [ ] Feature priorities reflect current plans
- [ ] Business context is accurate
- [ ] UX requirements are up-to-date

**System Patterns Review**:
- [ ] Architecture reflects current implementation
- [ ] Design patterns are documented and current
- [ ] Technical decisions are recorded
- [ ] Integration patterns are accurate

**Tech Context Review**:
- [ ] Technology stack is current
- [ ] Development environment is documented
- [ ] Tool configurations are accurate
- [ ] Dependencies are up-to-date

**Active Context Review**:
- [ ] Current work focus is accurate
- [ ] Recent changes are documented
- [ ] Next steps are clear and prioritized
- [ ] Critical patterns are captured

**Progress Review**:
- [ ] Completed work is accurately recorded
- [ ] Current status reflects reality
- [ ] Known issues are documented
- [ ] Lessons learned are captured

## Update Requirements

### Content Accuracy
**Factual Updates**: [Specific facts that need correction or addition]
**Status Updates**: [Current project status and phase]
**Decision Updates**: [New decisions or changes to previous decisions]
**Pattern Updates**: [New patterns discovered or existing patterns modified]

### Cross-File Consistency
**Reference Checking**: [Ensure cross-references between files are accurate]
**Terminology Alignment**: [Consistent use of terms across all files]
**Pattern Alignment**: [Consistent patterns documented across relevant files]
**Decision Alignment**: [Decisions recorded consistently across files]

### Completeness Validation
**Missing Information**: [Gaps in current documentation that need filling]
**Outdated Information**: [Information that needs updating or removal]
**New Context**: [New information that needs to be documented]
**Future Considerations**: [Emerging patterns or considerations to document]

## AI Agent Coordination Updates

### Shared Instructions
**Standards Changes**: [Updates to quality standards or coding conventions]
**Workflow Changes**: [Updates to development workflow or processes]
**Tool Changes**: [Updates to tool usage or configurations]
**Coordination Changes**: [Updates to cross-agent coordination approaches]

### Agent-Specific Updates
**Cline Instructions**: [Updates specific to Cline workflow or capabilities]
**Copilot Instructions**: [Updates for code completion and suggestion patterns]
**Codex Instructions**: [Updates for CLI automation and scripting patterns]

## Validation Requirements

### Internal Consistency
- [ ] All files reference consistent project goals and scope
- [ ] Technical decisions are consistently documented
- [ ] Terminology is used consistently across files
- [ ] Cross-references are accurate and up-to-date

### External Alignment
- [ ] Documentation matches actual code implementation
- [ ] Stated patterns match code patterns in use
- [ ] Technology context matches actual development environment
- [ ] Progress status matches actual project state

### Completeness Check
- [ ] All major decisions are documented
- [ ] All significant patterns are captured
- [ ] All current work is accurately described
- [ ] All AI agents have sufficient context

### Future-Proofing
- [ ] Documentation supports planned future work
- [ ] Patterns are extensible and maintainable
- [ ] Context supports effective cross-agent coordination
- [ ] Knowledge capture supports project continuity
```

## AI Agent Instructions

### For Cline
When performing memory bank update:
1. **Read All Files**: Review every memory bank file thoroughly
2. **Identify Gaps**: Note missing information, outdated content, inconsistencies
3. **Update Systematically**: Update files in dependency order (brief → contexts → patterns → active → progress)
4. **Cross-Reference**: Ensure all references between files are accurate
5. **Validate Completeness**: Confirm all critical information is captured

### For GitHub Copilot
When memory bank is updated:
1. **Refresh Context**: Use updated patterns and conventions for suggestions
2. **Align Suggestions**: Ensure code suggestions match documented patterns
3. **Support Documentation**: Help generate code comments that match documentation style
4. **Maintain Consistency**: Follow updated coding standards and patterns

### For CLI Codex
When supporting updated memory bank:
1. **Update Commands**: Adjust automation to match updated workflow
2. **Refresh Scripts**: Update scripts to match current technology stack
3. **Validate Environment**: Ensure commands work with documented environment
4. **Support New Patterns**: Generate commands that support documented patterns

## Update Process Workflow

### Phase 1: Assessment and Planning
```
**Cline Tasks**:
- [ ] Read all current memory bank files
- [ ] Identify inconsistencies and gaps
- [ ] Create update plan with priorities
- [ ] Document current state assessment

**Validation**:
- [ ] All files reviewed for accuracy
- [ ] Gaps and inconsistencies identified
- [ ] Update plan is comprehensive
- [ ] Priorities are appropriate
```

### Phase 2: Content Updates
```
**Cline Tasks**:
- [ ] Update projectbrief.md with any scope or requirement changes
- [ ] Update productContext.md with UX and business changes
- [ ] Update systemPatterns.md with architectural and pattern changes
- [ ] Update techContext.md with technology and environment changes

**Validation**:
- [ ] All factual updates are accurate
- [ ] New information is properly integrated
- [ ] Outdated information is removed or updated
- [ ] Cross-references are maintained
```

### Phase 3: Context and Progress Updates
```
**Cline Tasks**:
- [ ] Update activeContext.md with current work and decisions
- [ ] Update progress.md with completed work and status
- [ ] Update instruction files if workflow changes are needed
- [ ] Ensure all lessons learned are captured

**Validation**:
- [ ] Current work is accurately described
- [ ] Progress status matches reality
- [ ] Recent decisions are documented
- [ ] Workflow instructions are current
```

### Phase 4: Consistency and Validation
```
**Cline Tasks**:
- [ ] Review all files for cross-reference accuracy
- [ ] Check terminology consistency across files
- [ ] Validate pattern consistency
- [ ] Confirm completeness of context

**Validation**:
- [ ] All cross-references are accurate
- [ ] Terminology is consistent
- [ ] No contradictions between files
- [ ] Sufficient context for all AI agents
```

## Success Criteria

### Accuracy
- All information in memory bank reflects current project state
- No contradictions or inconsistencies between files
- All recent changes and decisions are documented
- Cross-references are accurate and helpful

### Completeness
- All AI agents have sufficient context to operate effectively
- All critical patterns and decisions are captured
- Current work and next steps are clearly documented
- Lessons learned are preserved for future reference

### Usability
- Information is organized logically and accessibly
- Cross-references help navigation between related concepts
- Documentation supports efficient AI agent operation
- Context enables effective cross-agent coordination

## Common Update Scenarios

### After Feature Completion
- Update progress.md with completed work
- Document new patterns in systemPatterns.md
- Update activeContext.md with next priorities
- Capture lessons learned in appropriate files

### After Architecture Changes
- Update systemPatterns.md with new architectural decisions
- Update techContext.md if technology stack changes
- Update activeContext.md with current implementation focus
- Ensure all AI instruction files reflect new patterns

### During Planning Phase
- Update projectbrief.md if scope or requirements change
- Update productContext.md with refined user understanding
- Update activeContext.md with planning outcomes
- Prepare progress.md for upcoming development phases

### Session Handoff
- Update activeContext.md with precise current state
- Update progress.md with session accomplishments
- Ensure all recent decisions are documented
- Prepare clear next steps for subsequent sessions
