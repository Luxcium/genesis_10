# Development Workflow Prompt

## Purpose
This prompt template guides AI agents through feature development, ensuring consistency with established patterns and proper memory bank updates throughout the development process.

## Template Usage
Use this prompt when implementing features, fixing bugs, or making significant code changes.

## Prompt Template

```
# Development Task Request

## Task Overview
**Task Type**: [Feature development | Bug fix | Refactoring | Performance optimization | Security enhancement]
**Feature/Issue Name**: [Clear, descriptive name]
**Priority Level**: [Critical | High | Medium | Low]
**Estimated Complexity**: [Simple | Moderate | Complex | Very Complex]

## Current Context
**Current Phase**: [Planning | Development | Testing | Review | Deployment]
**Related Work**: [Previous tasks or features this builds upon]
**Dependencies**: [Other tasks that must be completed first]
**Blockers**: [Any current obstacles or unknowns]

## Requirements Specification
**User Story**: [As a [user type], I want [functionality] so that [benefit]]
**Acceptance Criteria**:
- [ ] [Specific, measurable criterion 1]
- [ ] [Specific, measurable criterion 2]
- [ ] [Specific, measurable criterion 3]

**Technical Requirements**:
- [Performance requirement 1]
- [Security requirement 1]
- [Compatibility requirement 1]

## Technical Approach
**Affected Components**: [List of files/modules that will be modified]
**New Components**: [List of files/modules that will be created]
**Integration Points**: [How this connects to existing system]
**Data Flow**: [How data moves through the feature]

## Implementation Plan
**Phase 1**: [Initial implementation steps]
**Phase 2**: [Feature completion steps]
**Phase 3**: [Testing and validation steps]
**Phase 4**: [Integration and documentation steps]

## Quality Assurance
**Testing Strategy**:
- [ ] Unit tests for new functions/methods
- [ ] Integration tests for component interactions
- [ ] End-to-end tests for user workflows
- [ ] Performance tests if applicable

**Code Quality Checks**:
- [ ] Code follows established patterns
- [ ] Error handling is comprehensive
- [ ] Documentation is updated
- [ ] Security best practices are followed

## Memory Bank Updates Required
**System Patterns**: [New patterns or modifications to existing patterns]
**Tech Context**: [New dependencies, tools, or environment changes]
**Active Context**: [Current work focus and progress updates]
**Progress Tracking**: [Milestone completion and status updates]

## Cross-Agent Coordination
**Cline Tasks**: [Architecture, file operations, complex logic]
**Copilot Support**: [Code completion, boilerplate generation]
**CLI Codex Tasks**: [Build scripts, automation, deployment commands]

## Risk Assessment
**Technical Risks**: [Potential technical challenges or unknowns]
**Timeline Risks**: [Factors that could delay completion]
**Quality Risks**: [Areas where quality might be compromised]
**Mitigation Strategies**: [How to address identified risks]
```

## AI Agent Instructions

### For Cline
When implementing this task:
1. **Read Memory Bank**: Start by reading all relevant memory bank files
2. **Validate Approach**: Ensure planned approach aligns with system patterns
3. **Implement Incrementally**: Break work into small, verifiable steps
4. **Update Documentation**: Keep memory bank current throughout development
5. **Test Thoroughly**: Validate implementation against acceptance criteria

### For GitHub Copilot
When supporting this development:
1. **Follow Patterns**: Use established coding patterns from system patterns
2. **Maintain Quality**: Generate code that meets documented quality standards
3. **Support Testing**: Suggest appropriate test code and validation
4. **Enhance Documentation**: Generate helpful comments and documentation

### For CLI Codex
When automating this development:
1. **Build Support**: Generate build commands for new components
2. **Test Automation**: Create commands for running relevant tests
3. **Quality Checks**: Provide commands for code quality validation
4. **Deployment Prep**: Generate deployment-related commands if needed

## Development Phases

### Phase 1: Planning and Setup
```
# Phase 1 Tasks
**Cline**: Read memory bank, validate requirements, create implementation plan
**Copilot**: Review existing code patterns, understand integration points
**Codex**: Prepare development environment, check tool availability

**Deliverables**:
- [ ] Updated activeContext.md with detailed implementation plan
- [ ] Identified integration points and dependencies
- [ ] Environment ready for development
```

### Phase 2: Core Implementation
```
# Phase 2 Tasks
**Cline**: Implement core functionality, create new files, modify existing code
**Copilot**: Assist with code completion, suggest improvements, generate boilerplate
**Codex**: Provide build commands, run tests, validate code quality

**Deliverables**:
- [ ] Core functionality implemented and working
- [ ] Unit tests written and passing
- [ ] Code quality checks passing
```

### Phase 3: Integration and Testing
```
# Phase 3 Tasks
**Cline**: Integrate with existing system, resolve conflicts, comprehensive testing
**Copilot**: Suggest integration code, help with test scenarios
**Codex**: Run integration tests, performance tests, generate test reports

**Deliverables**:
- [ ] Feature integrated with existing system
- [ ] All tests passing
- [ ] Performance requirements met
```

### Phase 4: Documentation and Finalization
```
# Phase 4 Tasks
**Cline**: Update all relevant documentation, finalize memory bank updates
**Copilot**: Generate documentation comments, suggest README updates
**Codex**: Generate deployment commands, create automation scripts

**Deliverables**:
- [ ] Memory bank updated with new patterns and learnings
- [ ] Documentation complete and accurate
- [ ] Feature ready for deployment
```

## Success Criteria

### Functional Success
- All acceptance criteria are met
- Feature works as specified in user story
- Integration with existing system is seamless
- Performance requirements are satisfied

### Technical Success
- Code follows established patterns and conventions
- Test coverage meets project standards
- Documentation is complete and accurate
- No new security vulnerabilities introduced

### Process Success
- Memory bank accurately reflects current system state
- All AI agents can understand and work with new code
- Development workflow was efficient and well-coordinated
- Lessons learned are captured for future development

## Common Issues and Solutions

### Integration Conflicts
**Problem**: New feature conflicts with existing code
**Solution**: Update system patterns to accommodate both approaches, refactor if necessary

### Performance Issues
**Problem**: Feature doesn't meet performance requirements
**Solution**: Profile code, optimize critical paths, consider architectural changes

### Testing Gaps
**Problem**: Insufficient test coverage or failing tests
**Solution**: Add comprehensive tests, review test strategy, update testing patterns

### Documentation Debt
**Problem**: Documentation doesn't reflect current implementation
**Solution**: Update all relevant memory bank files, ensure cross-references are accurate

## Quality Gates

Before marking task complete, verify:
- [ ] All acceptance criteria are met
- [ ] Code quality standards are satisfied
- [ ] Test coverage meets requirements
- [ ] Memory bank is updated and consistent
- [ ] Cross-agent coordination is maintained
- [ ] Documentation accurately reflects implementation
- [ ] No regression in existing functionality
- [ ] Feature is ready for next phase or deployment
