#!/bin/bash

# Memory Bank Initialization Script
# Creates complete memory bank structure for new projects

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
MEMORY_BANK_DIR="memory-bank"
PROJECT_NAME="${1:-New Project}"

# Functions
print_header() {
    echo -e "${BLUE}=== Memory Bank Initialization ===${NC}"
    echo "Creating memory bank structure for: $PROJECT_NAME"
    echo
}

create_directory_structure() {
    echo -e "${BLUE}Creating directory structure...${NC}"

    # Create main directories
    mkdir -p "$MEMORY_BANK_DIR"/{instructions,prompts,chatmodes}

    echo -e "${GREEN}✓${NC} Created memory-bank directory structure"
}

create_core_files() {
    echo -e "${BLUE}Creating core memory bank files...${NC}"

    # Project Brief
    cat > "$MEMORY_BANK_DIR/projectbrief.md" << EOF
# Project Brief

## Project Overview
**Project Name**: $PROJECT_NAME
**Project Type**: [Web application | Mobile app | CLI tool | Library | API | Desktop application | etc.]
**Primary Technology**: [Primary programming language/framework]
**Target Users**: [Brief description of intended users]

## Core Requirements
**Problem Statement**: [What problem does this project solve?]
**Key Features**:
- [Feature 1: Brief description]
- [Feature 2: Brief description]
- [Feature 3: Brief description]

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
EOF

    # Product Context
    cat > "$MEMORY_BANK_DIR/productContext.md" << EOF
# Product Context

## User Experience Goals
**Primary User Journey**: [Main path users take through the application]
**Key User Actions**: [Most important actions users need to perform]
**Success Metrics**: [How user success is measured]

## Feature Priorities
**Must Have Features**:
- [Critical feature 1]
- [Critical feature 2]

**Should Have Features**:
- [Important feature 1]
- [Important feature 2]

**Could Have Features**:
- [Nice-to-have feature 1]
- [Nice-to-have feature 2]

## Business Context
**Project Purpose**: [Why this project exists]
**Value Proposition**: [What value it provides to users]
**Competitive Landscape**: [How it compares to alternatives]

## User Interface Requirements
**Design Principles**: [Key design principles to follow]
**Accessibility Requirements**: [Specific accessibility needs]
**Performance Expectations**: [User experience performance requirements]
EOF

    # Active Context
    cat > "$MEMORY_BANK_DIR/activeContext.md" << EOF
# Active Context

## Current Work Focus
**Primary Objective**: Initialize project and establish foundation
**Current Phase**: Planning and Setup
**Priority Level**: High

## Recent Changes
- Created memory bank structure
- Established AI agent coordination framework
- Set up development environment preparation

## Next Steps
1. Define specific project requirements
2. Set up development environment
3. Create initial project structure
4. Implement first core feature

## Critical Patterns
**Development Approach**: [Iterative | Waterfall | Agile | Custom]
**Code Organization**: [Modular | Monolithic | Microservices | etc.]
**Testing Strategy**: [Unit tests | Integration tests | E2E tests | etc.]

## Active Decisions
- Memory bank system established for AI agent coordination
- Cross-agent instruction system implemented
- Automated validation and maintenance tools configured

## Current Blockers
- [None currently, awaiting project specification]

## Recent Insights
- Memory bank provides excellent foundation for multi-AI agent coordination
- Prompt templates streamline common development workflows
- Automated validation ensures memory bank integrity
EOF

    # System Patterns
    cat > "$MEMORY_BANK_DIR/systemPatterns.md" << EOF
# System Patterns

## Architectural Principles
**Modularity**: [How the system is broken into modules]
**Separation of Concerns**: [How different responsibilities are separated]
**Data Flow**: [How data moves through the system]

## Design Patterns
**Primary Patterns**: [Main design patterns used]
**Error Handling**: [How errors are handled consistently]
**State Management**: [How application state is managed]

## Code Organization
**Directory Structure**: [How code is organized in directories]
**Naming Conventions**: [Consistent naming patterns]
**File Organization**: [How files are structured and named]

## Integration Patterns
**API Design**: [How APIs are designed and structured]
**Data Models**: [How data is structured and validated]
**External Services**: [How external services are integrated]

## Quality Patterns
**Testing Approach**: [How testing is structured and executed]
**Code Review Process**: [How code quality is maintained]
**Documentation Standards**: [How code and features are documented]

## Implementation Guidelines
**Performance Considerations**: [Key performance patterns to follow]
**Security Patterns**: [Security measures and patterns]
**Scalability Patterns**: [How the system scales with growth]
EOF

    # Tech Context
    cat > "$MEMORY_BANK_DIR/techContext.md" << EOF
# Technology Context

## Technology Stack
**Frontend**: [Framework/library and version]
**Backend**: [Framework/runtime and version]
**Database**: [Database system and version]
**Infrastructure**: [Hosting/deployment platform]

## Development Environment
**Operating System**: [Primary development OS]
**IDE/Editor**: [Primary development environment]
**Version Control**: [Git workflow and branching strategy]
**Package Management**: [Package managers and dependency handling]

## Build and Deployment
**Build Tools**: [Build system and configuration]
**Testing Frameworks**: [Testing tools and approaches]
**CI/CD Pipeline**: [Continuous integration and deployment setup]
**Environment Management**: [Development, staging, production environments]

## Dependencies and Tools
**Core Dependencies**: [Essential libraries and frameworks]
**Development Dependencies**: [Tools used during development]
**Testing Dependencies**: [Testing libraries and tools]
**Monitoring and Logging**: [Observability tools and configuration]

## Constraints and Requirements
**Browser Support**: [Supported browsers and versions]
**Device Support**: [Supported devices and screen sizes]
**Performance Requirements**: [Speed, memory, and resource constraints]
**Security Requirements**: [Security standards and compliance needs]

## Configuration Management
**Environment Variables**: [How configuration is managed]
**Secrets Management**: [How sensitive data is handled]
**Feature Flags**: [How features are toggled and managed]
**Logging Configuration**: [How logging is configured and managed]
EOF

    # Progress
    cat > "$MEMORY_BANK_DIR/progress.md" << EOF
# Progress Tracking

## Project Status
**Current Phase**: Initialization
**Overall Progress**: 5% (Memory bank established)
**Last Updated**: $(date +"%Y-%m-%d %H:%M:%S")

## Completed Work
### Phase 0: Foundation (Completed)
- [x] Memory bank structure created
- [x] AI agent coordination framework established
- [x] Cross-agent instruction system implemented
- [x] Prompt templates created for common workflows
- [x] Automation scripts for validation and maintenance

## Current Work
### Phase 1: Project Definition (In Progress)
- [ ] Define specific project requirements
- [ ] Establish technology stack
- [ ] Create development environment setup
- [ ] Define initial feature set

## Upcoming Work
### Phase 2: Initial Development (Planned)
- [ ] Set up project structure
- [ ] Implement core architecture
- [ ] Create first working feature
- [ ] Establish testing framework

### Phase 3: Feature Development (Planned)
- [ ] Implement core features
- [ ] Add comprehensive testing
- [ ] Optimize performance
- [ ] Enhance user experience

## Known Issues
- None currently identified

## Lessons Learned
### Memory Bank System
- Provides excellent foundation for AI agent coordination
- Enables consistent context across different AI tools
- Automated validation prevents documentation drift
- Cross-agent instructions improve workflow efficiency

### Development Process
- Early establishment of patterns prevents technical debt
- Comprehensive documentation supports faster development
- Automated tools reduce manual maintenance overhead
- Cross-agent coordination improves development velocity

## Risk Assessment
**Technical Risks**: [To be assessed once technology stack is defined]
**Timeline Risks**: [To be assessed once requirements are finalized]
**Resource Risks**: [To be assessed based on team capacity]

## Success Metrics
**Development Velocity**: [Measure development speed and efficiency]
**Code Quality**: [Track code quality metrics and standards]
**Documentation Coverage**: [Ensure comprehensive documentation]
**Cross-Agent Efficiency**: [Measure AI agent coordination effectiveness]
EOF

    echo -e "${GREEN}✓${NC} Created core memory bank files"
}

create_instruction_files() {
    echo -e "${BLUE}Creating instruction files...${NC}"

    # Create README for instructions
    cat > "$MEMORY_BANK_DIR/instructions/README.md" << EOF
# AI Agent Instructions

This directory contains instruction files for different AI agents working on this project.

## Files

- **shared.instructions.md** - Common standards and protocols for all AI agents
- **cline.instructions.md** - Specific instructions for Cline AI agent
- **copilot.instructions.md** - GitHub Copilot integration guidelines
- **codex.instructions.md** - CLI Codex automation patterns

## Usage

These instruction files are automatically referenced by the respective AI agents to ensure consistent behavior and coordination across all tools.

Each agent should read the shared instructions plus their specific instruction file at the start of each session.
EOF

    echo -e "${GREEN}✓${NC} Created instruction directory structure"
}

create_prompt_files() {
    echo -e "${BLUE}Creating prompt templates...${NC}"

    # Create README for prompts
    cat > "$MEMORY_BANK_DIR/prompts/README.md" << EOF
# Workflow Prompt Templates

This directory contains reusable prompt templates for common development workflows.

## Templates

- **initialization.prompt.md** - Complete project setup template
- **development.prompt.md** - Feature development workflow template
- **memory-update.prompt.md** - Memory bank maintenance template

## Usage

These templates provide structured approaches to common development tasks, ensuring consistency and completeness across different work sessions.

Copy the relevant template and fill in the project-specific details when needed.
EOF

    echo -e "${GREEN}✓${NC} Created prompt template structure"
}

create_chatmode_files() {
    echo -e "${BLUE}Creating chat mode templates...${NC}"

    # Create README for chatmodes
    cat > "$MEMORY_BANK_DIR/chatmodes/README.md" << EOF
# Chat Mode Templates

This directory contains specialized conversation patterns for different development phases.

## Purpose

Chat modes provide context-specific interaction templates that help AI agents understand the current development phase and adjust their communication style accordingly.

## Usage

- Reference appropriate chat mode based on current project phase
- Use templates to maintain consistent communication patterns
- Adapt templates based on project-specific needs

## Future Extensions

Additional chat modes can be added for:
- Code review sessions
- Debugging workflows
- Architecture planning
- Performance optimization
- Security reviews
EOF

    echo -e "${GREEN}✓${NC} Created chat mode structure"
}

create_automation_helpers() {
    echo -e "${BLUE}Setting up automation helpers...${NC}"

    # Make validation script executable if it exists
    if [[ -f "scripts/memory-bank-validate.sh" ]]; then
        chmod +x "scripts/memory-bank-validate.sh"
        echo -e "${GREEN}✓${NC} Memory bank validation script ready"
    fi

    # Create quick validation alias suggestion
    cat > "$MEMORY_BANK_DIR/.validation-helper" << EOF
# Memory Bank Validation Helper
#
# Add this alias to your shell configuration for quick validation:
# alias mb-validate="./scripts/memory-bank-validate.sh"
# alias mb-validate-fix="./scripts/memory-bank-validate.sh --fix"
# alias mb-validate-verbose="./scripts/memory-bank-validate.sh --verbose"
#
# Usage:
# mb-validate          - Quick validation check
# mb-validate-fix      - Validate and create missing files
# mb-validate-verbose  - Detailed analysis and cross-reference checking
EOF

    echo -e "${GREEN}✓${NC} Created automation helper files"
}

update_clinerules() {
    echo -e "${BLUE}Updating .clinerules with project-specific patterns...${NC}"

    # Add project-specific note to .clinerules if it doesn't exist
    if ! grep -q "Project: $PROJECT_NAME" .clinerules 2>/dev/null; then
        echo "" >> .clinerules
        echo "## Project-Specific Configuration" >> .clinerules
        echo "" >> .clinerules
        echo "**Project**: $PROJECT_NAME" >> .clinerules
        echo "**Initialized**: $(date +"%Y-%m-%d %H:%M:%S")" >> .clinerules
        echo "**Memory Bank Version**: 1.0" >> .clinerules
        echo "" >> .clinerules
        echo "### Project Intelligence" >> .clinerules
        echo "- Memory bank initialized with comprehensive AI agent coordination" >> .clinerules
        echo "- Cross-agent instruction system established" >> .clinerules
        echo "- Automated validation and maintenance tools configured" >> .clinerules
        echo "- Prompt templates created for streamlined workflows" >> .clinerules

        echo -e "${GREEN}✓${NC} Updated .clinerules with project information"
    else
        echo -e "${YELLOW}⚠${NC} .clinerules already contains project information"
    fi
}

generate_summary() {
    echo
    echo -e "${BLUE}=== Initialization Complete ===${NC}"
    echo -e "${GREEN}✓${NC} Memory bank structure created successfully"
    echo
    echo "Created structure:"
    echo "  memory-bank/"
    echo "  ├── Core files (projectbrief.md, activeContext.md, etc.)"
    echo "  ├── instructions/ (AI agent coordination)"
    echo "  ├── prompts/ (workflow templates)"
    echo "  └── chatmodes/ (conversation patterns)"
    echo
    echo "Next steps:"
    echo "1. Edit memory-bank/projectbrief.md to define your specific project"
    echo "2. Update memory-bank/techContext.md with your technology stack"
    echo "3. Customize memory-bank/productContext.md with user requirements"
    echo "4. Run './scripts/memory-bank-validate.sh' to verify setup"
    echo
    echo "Quick commands:"
    echo "  ./scripts/memory-bank-validate.sh           # Validate memory bank"
    echo "  ./scripts/memory-bank-validate.sh --fix     # Create missing files"
    echo "  ./scripts/memory-bank-validate.sh --verbose # Detailed analysis"
}

# Main execution
main() {
    # Check if memory bank already exists
    if [[ -d "$MEMORY_BANK_DIR" ]] && [[ -f "$MEMORY_BANK_DIR/projectbrief.md" ]]; then
        echo -e "${YELLOW}⚠${NC} Memory bank appears to already exist."
        echo "Contents of $MEMORY_BANK_DIR:"
        ls -la "$MEMORY_BANK_DIR"
        echo
        read -p "Do you want to reinitialize? This will overwrite existing files. (y/N): " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "Initialization cancelled."
            exit 0
        fi
    fi

    print_header

    # Create structure
    create_directory_structure
    create_core_files
    create_instruction_files
    create_prompt_files
    create_chatmode_files
    create_automation_helpers
    update_clinerules

    generate_summary
}

# Help function
show_help() {
    echo "Memory Bank Initialization Script"
    echo
    echo "Usage: $0 [PROJECT_NAME]"
    echo
    echo "Creates a complete memory bank structure for AI agent coordination."
    echo
    echo "Arguments:"
    echo "  PROJECT_NAME    Name of the project (default: 'New Project')"
    echo
    echo "Options:"
    echo "  --help         Show this help message"
    echo
    echo "Examples:"
    echo "  $0                           # Initialize with default name"
    echo "  $0 \"My Awesome Project\"      # Initialize with custom name"
}

# Parse command line arguments
if [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
    show_help
    exit 0
fi

# Run main function
main
