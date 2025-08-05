# System Patterns

Use this document to define the system architecture, design patterns, and key technical decisions for the project. This serves as a foundational reference for both human developers and AI agents.

- Documents the system architecture
- Records key technical decisions
- Lists design patterns in use
- Explains component relationships
- Example: “Using Redux for state management with a normalized store structure”

## Architecture Overview

This section provides an overview of the system architecture, including key components and their interactions.

## Internal Documentation and Instructions

All system patterns, conventions, and technical protocols are further detailed in the internal documentation located in `memory-bank/instructions/`. This directory contains:

- Protocols for chatmode creation, prompt files, and instructions files
- Prettier and formatting configuration
- Shared conventions and operational guidelines
- Documentation for Memory Bank structure and update procedures

All agents and contributors must reference these files for implementation details, process compliance, and cross-file dependencies.

### System Architecture

[High-level system design and component relationships]

### Core Design Principles

- [Principle 1 - rationale and application]
- [Principle 2 - rationale and application]
- [Principle 3 - rationale and application]

### Architectural Style

[Monolithic | Microservices | Serverless | Event-Driven | etc.]

## Key Technical Decisions

### Language and Framework Choices

- **Primary Language**: [Language - justification]
- **Framework**: [Framework - rationale]
- **Runtime Environment**: [Environment - requirements]

### Data Architecture

- **Data Storage**: [Database/storage solution - rationale]
- **Data Flow**: [How data moves through the system]
- **State Management**: [How state is handled and persisted]

### Infrastructure Decisions

- **Deployment Model**: [Local | Cloud | Hybrid - rationale]
- **Scalability Strategy**: [Horizontal | Vertical | Auto-scaling approach]
- **Monitoring and Observability**: [Tools and approaches]

## Design Patterns in Use

### Structural Patterns

- [Pattern 1 - where used and why]
- [Pattern 2 - where used and why]
- [Pattern 3 - where used and why]

### Behavioral Patterns

- [Pattern 1 - implementation approach]
- [Pattern 2 - implementation approach]
- [Pattern 3 - implementation approach]

### Integration Patterns

- [API design patterns]
- [Communication patterns]
- [Error handling patterns]

## Component Relationships

### Core Components

```
[Component Diagram or Description]
- Component A: [Purpose and responsibilities]
- Component B: [Purpose and responsibilities]
- Component C: [Purpose and responsibilities]
```

### Dependencies

- [Internal dependencies - why they exist]
- [External dependencies - risk mitigation]
- [Circular dependencies - resolution strategy]

### Interface Contracts

- [API contracts and expectations]
- [Data contracts between components]
- [Event contracts for messaging]

## Critical Implementation Paths

### Core User Flows

1. [Primary user flow - technical implementation]
2. [Secondary user flow - technical implementation]
3. [Error/edge case flow - handling approach]

### Critical System Operations

- [Startup/initialization sequence]
- [Shutdown/cleanup procedures]
- [Health check and monitoring endpoints]

### Performance Critical Paths

- [High-traffic operations - optimization strategy]
- [Resource-intensive operations - efficiency measures]
- [Real-time operations - latency requirements]

## Quality Attributes

### Performance Requirements

- [Response time expectations]
- [Throughput requirements]
- [Resource utilization limits]

### Reliability Patterns

- [Error handling strategy]
- [Retry mechanisms]
- [Circuit breaker patterns]
- [Graceful degradation]

### Security Patterns

- [Authentication approach]
- [Authorization model]
- [Data protection measures]
- [Secure communication protocols]

## Evolution Strategy

- [Plugin or module architecture]
- [Configuration-driven behavior]

### Technical Debt Management

- [Modernization roadmap]

- [System migration patterns]
- [Backward compatibility maintenance]

### Pattern Compliance

# Task-Script-Prompt 1:1:1 Pattern

## Overview

Establish a 1:1:1 mapping between VS Code tasks, scripts, and prompt documentation for each autonomous operation. This ensures every automated task is:

- Clearly defined in `.vscode/tasks.json`
- Backed by a dedicated script in the `scripts/` folder
- Documented with a corresponding `.prompt.md` file in `memory-bank/prompts/`

## Procedure

1. **Create a Script**: Place a script in `scripts/` that performs the desired operation, using best practices for portability and clarity.
2. **Define a Task**: Add a VS Code task in `.vscode/tasks.json` referencing the script, with a descriptive label and details for autonomous use.
3. **Document with a Prompt**: Write a `.prompt.md` file in `memory-bank/prompts/` explaining the task, script, and usage instructions for AI agents.
4. **Maintain 1:1:1 Mapping**: Ensure each task has exactly one script and one prompt, and vice versa, for traceability and maintainability.
5. **Update Memory Bank**: After adding or modifying a task, update the memory bank to record the new mapping and procedure.
6. **Reference Internal Instructions**: For all new patterns, protocols, or conventions, update or create a file in `memory-bank/instructions/` and reference it here and in other relevant Memory Bank files.

## Benefits

- Enables autonomous, repeatable task execution by AI agents
- Ensures all tasks are discoverable and documented
- Supports future extensibility and onboarding

## Example

- Task: `Get Current Date/Time (Québec City Local)`

## Reuse

This pattern should be followed for all new automated tasks. When initializing a project, ensure this procedure is documented and used for every new task addition.

- **MANDATORY**: Deviations require explicit justification and documentation
- **MANDATORY**: New patterns must be documented here immediately

### Architecture Enforcement

- **MANDATORY**: Verify component relationships before modifications
- **MANDATORY**: Ensure interface contracts are maintained
- **MANDATORY**: Performance implications must be considered

### Cross-Agent Coordination

- This file defines the technical foundation all AI agents must respect
- Architecture changes require consensus and full documentation
- Pattern violations indicate need for system redesign consideration
- Internal documentation in `memory-bank/instructions/` supplements this file and must be referenced for all technical protocols, conventions, and system patterns.
