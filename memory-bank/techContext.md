# Tech Context

Use this document to provide a comprehensive overview of the technology stack, development environment, and technical constraints for the project. This context is essential for both human developers and AI agents to understand the project's technical landscape.

- Lists technologies and frameworks used
- Describes development setup
- Notes technical constraints
- Records dependencies and tool configurations
- Example: “React 18, TypeScript, Firebase, Jest for testing”

## Technology Stack

This section outlines the primary technologies and frameworks used in the project, along with their version requirements and constraints.

### Primary Technologies

- **Language**: [Primary programming language and version]
- **Runtime**: [Runtime environment and version requirements]
- **Framework**: [Main framework with version constraints]
- **Build Tool**: [Build system and configuration approach]

### Development Dependencies

- **Package Manager**: [npm | yarn | pip | cargo | etc.]
- **Testing Framework**: [Unit and integration testing tools]
- **Linting Tools**: [Code quality and formatting tools]
- **Development Server**: [Local development environment]

### Production Dependencies

- **Core Libraries**: [Essential runtime dependencies]
- **Database Drivers**: [Data access libraries and ORMs]
- **API Clients**: [External service integrations]
- **Utility Libraries**: [Common functionality packages]

## Development Environment

### Required Tools

- **IDE/Editor**: [Recommended development environment]
- **Version Control**: [Git workflow and branch strategy]
- **Container Tools**: [Docker, Kubernetes, etc. if applicable]
- **Cloud Tools**: [AWS CLI, Azure CLI, GCP tools, etc.]

### Environment Setup

```bash
# Installation commands
[Command 1 - purpose]
[Command 2 - purpose]
[Command 3 - purpose]

# Environment configuration
[Configuration step 1]
[Configuration step 2]
[Configuration step 3]
```

### Local Development Workflow

1. [Step 1 - specific action and command]
2. [Step 2 - specific action and command]
3. [Step 3 - specific action and command]

## Technical Constraints

### Platform Requirements

- **Operating System**: [Supported OS versions]
- **Hardware Requirements**: [Minimum specs for development]
- **Network Requirements**: [Connectivity and bandwidth needs]

### Performance Constraints

- **Memory Limits**: [RAM usage boundaries]
- **CPU Requirements**: [Processing power needs]
- **Storage Requirements**: [Disk space and I/O performance]
- **Network Latency**: [Response time requirements]

### Security Constraints

- **Authentication Requirements**: [Security protocols required]
- **Data Protection**: [Encryption and privacy requirements]
- **Access Control**: [Permission and authorization models]
- **Audit Requirements**: [Logging and compliance needs]

## Integration Context

### External APIs

- **API 1**: [Purpose, endpoint, authentication method]
- **API 2**: [Purpose, endpoint, authentication method]
- **API 3**: [Purpose, endpoint, authentication method]

### Database Integration

- **Primary Database**: [Type, version, connection approach]
- **Cache Layer**: [Redis, Memcached, etc. if applicable]
- **Search Engine**: [Elasticsearch, Solr, etc. if applicable]

### Message Queues

- **Queue System**: [RabbitMQ, Kafka, SQS, etc. if applicable]
- **Event Streaming**: [Real-time data processing if applicable]

## Tool Usage Patterns

### Code Quality Tools

- **Linter Configuration**: [ESLint, Pylint, etc. - specific rules]
- **Formatter Settings**: [Prettier, Black, etc. - formatting rules]
- **Type Checking**: [TypeScript, mypy, etc. - configuration]

### Testing Strategy

- **Unit Testing**: [Framework and patterns used]
- **Integration Testing**: [Approach and tools]
- **End-to-End Testing**: [Browser testing, API testing tools]
- **Performance Testing**: [Load testing tools and approach]

### Deployment Tools

- **CI/CD Pipeline**: [GitHub Actions, Jenkins, etc.]
- **Container Registry**: [Docker Hub, ECR, etc.]
- **Infrastructure as Code**: [Terraform, CloudFormation, etc.]
- **Monitoring Tools**: [Application and infrastructure monitoring]

## Configuration Management

### Environment Variables

```bash
# Required environment variables
VARIABLE_1=description_and_example_value
VARIABLE_2=description_and_example_value
VARIABLE_3=description_and_example_value
```

### Configuration Files

- **Development**: [Local development configuration]
- **Testing**: [Test environment configuration]
- **Staging**: [Pre-production configuration]
- **Production**: [Production environment configuration]

### Secrets Management

- **Secret Storage**: [How secrets are stored and accessed]
- **Key Rotation**: [How secrets are rotated and updated]
- **Access Control**: [Who can access which secrets]

## AI Agent Tool Configuration

### Code Generation Settings

- **Language Standards**: [Coding conventions and style guides]
- **Import Preferences**: [How to handle dependencies and imports]
- **Error Handling**: [Standard patterns for error management]
- **Documentation**: [Comment and documentation standards]

### Development Workflow Integration

- **File Watching**: [Auto-reload and hot-reload configuration]
- **Build Automation**: [When and how builds are triggered]
- **Test Automation**: [When tests run and how results are handled]

### Cross-Agent Coordination

- **Shared Toolchain**: [Tools all AI agents should use consistently]
- **Configuration Sync**: [How tool configurations stay aligned]
- **Conflict Resolution**: [How to handle conflicting tool requirements]

## AI Agent Instructions

### Environment Compliance

- **MANDATORY**: Verify all required tools are available before code generation
- **MANDATORY**: Follow established coding standards and linting rules
- **MANDATORY**: Use specified dependency versions and package managers

### Tool Usage Requirements

- **MANDATORY**: Run tests after code changes using specified frameworks
- **MANDATORY**: Format code using configured formatters before committing
- **MANDATORY**: Validate environment variables and configuration before deployment

### Integration Requirements

- **MANDATORY**: Verify external API connectivity and authentication
- **MANDATORY**: Test database connections and migrations
- **MANDATORY**: Confirm deployment pipeline compatibility
