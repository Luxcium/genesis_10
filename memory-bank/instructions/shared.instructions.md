# Shared AI Agent Instructions

## Core Principles

### Memory Bank Adherence
- Follow these non-negotiable protocols:

1. **Read Before Action**: Always read ALL memory bank files before beginning any task
2. **Write After Action**: Update relevant memory bank files after completing any significant work
3. **Maintain Consistency**: Ensure all actions align with documented patterns and decisions
4. **Cross-Reference**: Verify decisions against project brief, system patterns, and tech context

### Communication Standards

#### Documentation Style
- **Markdown Format**: All documentation must follow strict MarkdownLint compliance
- **Single H1 Header**: One top-level header per file, logical sub-level hierarchy
- **Concise Content**: Hyper-focused information, no bloat or redundancy
- **Actionable Details**: Include specific, measurable, and implementable information

#### Code Standards
- **Consistent Style**: Follow established linting and formatting rules
- **Self-Documenting**: Code should be readable with minimal comments
- **Error Handling**: Implement robust error handling patterns
- **Testing**: Include appropriate test coverage for all new code

### Workflow Protocols

#### Session Management
1. **Start Protocol**:
   - Read memory-bank/activeContext.md for current state
   - Verify understanding of immediate objectives
   - Confirm alignment with project brief and system patterns

2. **Work Protocol**:
   - Update activeContext.md with progress and decisions
   - Document any new patterns or insights immediately
   - Maintain cross-references between related concepts

3. **End Protocol**:
   - Update progress.md with session accomplishments
   - Update activeContext.md with next steps
   - Ensure all work is properly documented

#### Cross-Agent Handoff
- **Context Transfer**: Next agent must understand current state from memory bank alone
- **Decision Continuity**: All agents must respect previous decisions unless explicitly changed
- **Pattern Consistency**: Maintain established architectural and coding patterns

## Quality Standards

### Code Quality
- **Functional Requirements**: Code must meet all specified functional requirements
- **Performance Standards**: Meet or exceed documented performance expectations
- **Security Requirements**: Implement all specified security measures
- **Maintainability**: Code must be easily understood and modified by future developers

### Documentation Quality
- **Accuracy**: All documentation must reflect current system state
- **Completeness**: Cover all necessary aspects without gaps
- **Clarity**: Information must be unambiguous and actionable
- **Currency**: Keep documentation up-to-date with code changes

### User Experience
- **User-Centric Design**: All features must serve documented user needs
- **Accessibility**: Meet specified accessibility requirements
- **Performance**: Deliver responsive and efficient user interactions
- **Consistency**: Maintain consistent behavior across all features

## Collaboration Rules

### Conflict Resolution
When agents encounter conflicting information or requirements:

1. **Primary Authority**: Project brief takes precedence over other documents
2. **Technical Authority**: System patterns guide technical decision-making
3. **Current Authority**: Active context reflects most recent decisions
4. **Escalation Path**: Document conflicts that cannot be resolved automatically

### Knowledge Sharing
- **Pattern Documentation**: Document reusable patterns in systemPatterns.md
- **Lesson Recording**: Capture insights in progress.md lessons learned section
- **Context Updates**: Keep activeContext.md current with recent discoveries
- **Cross-References**: Link related concepts across memory bank files

### Tool Integration
- **Shared Toolchain**: Use consistent development tools across all agents
- **Configuration Sync**: Maintain aligned tool configurations
- **Validation Standards**: Apply same quality checks regardless of agent
- **Automation**: Leverage shared scripts and automation where possible

## Enforcement Mechanisms

### Mandatory Checks
Before any code generation or significant action, agents MUST verify:

- [ ] Memory bank files have been read and understood
- [ ] Current task aligns with documented objectives
- [ ] Proposed approach follows established patterns
- [ ] User requirements are properly addressed
- [ ] Technical constraints are respected

### Validation Requirements
After any significant work, agents MUST confirm:

- [ ] Code meets quality standards and passes tests
- [ ] Documentation has been updated appropriately
- [ ] Memory bank reflects current project state
- [ ] Next steps are clearly defined
- [ ] Cross-agent handoff information is complete

### Compliance Monitoring
- **Self-Validation**: Each agent must verify its own compliance
- **Peer Review**: Subsequent agents should validate previous work
- **Documentation Audit**: Regular review of memory bank completeness
- **Pattern Adherence**: Ongoing verification of pattern compliance

## Emergency Protocols

### Memory Bank Corruption
If memory bank information appears inconsistent or corrupted:

1. **Stop Work**: Do not proceed with development tasks
2. **Document Issue**: Record the specific inconsistency discovered
3. **Seek Clarification**: Request human intervention for resolution
4. **Validate Resolution**: Confirm memory bank integrity before resuming

### Conflicting Requirements
If requirements from different sources conflict:

1. **Document Conflict**: Record specific conflicting requirements
2. **Apply Hierarchy**: Use established authority hierarchy for resolution
3. **Update Documentation**: Reflect resolution in appropriate memory bank files
4. **Communicate Change**: Ensure all affected areas are updated

### Technical Blockers
If technical constraints prevent requirement fulfillment:

1. **Document Blocker**: Record specific technical limitation
2. **Propose Alternatives**: Suggest alternative approaches or solutions
3. **Update Constraints**: Reflect new understanding in techContext.md
4. **Seek Approval**: Get stakeholder approval for alternative approaches
