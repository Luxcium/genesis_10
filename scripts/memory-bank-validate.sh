#!/bin/bash

# Memory Bank Validation Script
# Validates memory bank completeness and consistency

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
MEMORY_BANK_DIR="memory-bank"
REQUIRED_FILES=(
    "projectbrief.md"
    "productContext.md"
    "activeContext.md"
    "systemPatterns.md"
    "techContext.md"
    "progress.md"
)

INSTRUCTION_FILES=(
    "instructions/shared.instructions.md"
    "instructions/cline.instructions.md"
    "instructions/copilot.instructions.md"
    "instructions/codex.instructions.md"
)

PROMPT_FILES=(
    "prompts/initialization.prompt.md"
    "prompts/development.prompt.md"
    "prompts/memory-update.prompt.md"
)

# Functions
print_header() {
    echo -e "${BLUE}=== Memory Bank Validation ===${NC}"
    echo "Validating memory bank structure and content..."
    echo
}

check_file_exists() {
    local file="$1"
    if [[ -f "$MEMORY_BANK_DIR/$file" ]]; then
        echo -e "${GREEN}✓${NC} $file exists"
        return 0
    else
        echo -e "${RED}✗${NC} $file missing"
        return 1
    fi
}

check_file_content() {
    local file="$1"
    local min_lines="${2:-10}"

    if [[ -f "$MEMORY_BANK_DIR/$file" ]]; then
        local line_count=$(wc -l < "$MEMORY_BANK_DIR/$file")
        if [[ $line_count -ge $min_lines ]]; then
            echo -e "${GREEN}✓${NC} $file has sufficient content ($line_count lines)"
            return 0
        else
            echo -e "${YELLOW}⚠${NC} $file may be incomplete ($line_count lines)"
            return 1
        fi
    else
        echo -e "${RED}✗${NC} $file not found for content check"
        return 1
    fi
}

check_markdown_format() {
    local file="$1"

    if [[ -f "$MEMORY_BANK_DIR/$file" ]]; then
        # Check for proper markdown structure
        if grep -q "^# " "$MEMORY_BANK_DIR/$file"; then
            echo -e "${GREEN}✓${NC} $file has proper markdown header"
            return 0
        else
            echo -e "${YELLOW}⚠${NC} $file missing top-level header"
            return 1
        fi
    else
        return 1
    fi
}

check_cross_references() {
    echo -e "${BLUE}Checking cross-references...${NC}"

    local ref_errors=0

    # Check if activeContext.md references other files
    if [[ -f "$MEMORY_BANK_DIR/activeContext.md" ]]; then
        if grep -q "projectbrief\|systemPatterns\|techContext" "$MEMORY_BANK_DIR/activeContext.md"; then
            echo -e "${GREEN}✓${NC} activeContext.md has cross-references"
        else
            echo -e "${YELLOW}⚠${NC} activeContext.md lacks cross-references"
            ((ref_errors++))
        fi
    fi

    # Check if systemPatterns.md references techContext
    if [[ -f "$MEMORY_BANK_DIR/systemPatterns.md" ]]; then
        if grep -q "techContext\|technology\|stack" "$MEMORY_BANK_DIR/systemPatterns.md"; then
            echo -e "${GREEN}✓${NC} systemPatterns.md references technology context"
        else
            echo -e "${YELLOW}⚠${NC} systemPatterns.md may lack technology references"
            ((ref_errors++))
        fi
    fi

    return $ref_errors
}

validate_directory_structure() {
    echo -e "${BLUE}Validating directory structure...${NC}"

    local errors=0

    # Check main memory bank directory
    if [[ ! -d "$MEMORY_BANK_DIR" ]]; then
        echo -e "${RED}✗${NC} Memory bank directory missing"
        return 1
    fi

    # Check subdirectories
    for subdir in "instructions" "prompts" "chatmodes"; do
        if [[ ! -d "$MEMORY_BANK_DIR/$subdir" ]]; then
            echo -e "${YELLOW}⚠${NC} $subdir directory missing"
            ((errors++))
        else
            echo -e "${GREEN}✓${NC} $subdir directory exists"
        fi
    done

    return $errors
}

generate_report() {
    local total_errors="$1"

    echo
    echo -e "${BLUE}=== Validation Summary ===${NC}"

    if [[ $total_errors -eq 0 ]]; then
        echo -e "${GREEN}✓ Memory bank validation passed${NC}"
        echo "All required files present and properly formatted."
    elif [[ $total_errors -le 3 ]]; then
        echo -e "${YELLOW}⚠ Memory bank validation passed with warnings${NC}"
        echo "Minor issues detected but memory bank is functional."
    else
        echo -e "${RED}✗ Memory bank validation failed${NC}"
        echo "Significant issues detected. Memory bank may not function properly."
    fi

    echo
    echo "Run with --fix to automatically create missing files."
    echo "Run with --verbose for detailed analysis."
}

create_missing_files() {
    echo -e "${BLUE}Creating missing files...${NC}"

    # Create directories if missing
    mkdir -p "$MEMORY_BANK_DIR"/{instructions,prompts,chatmodes}

    # Create missing core files with basic templates
    for file in "${REQUIRED_FILES[@]}"; do
        if [[ ! -f "$MEMORY_BANK_DIR/$file" ]]; then
            case "$file" in
                "projectbrief.md")
                    cat > "$MEMORY_BANK_DIR/$file" << 'EOF'
# Project Brief

## Project Overview
**Project Name**: [To be defined]
**Project Type**: [To be defined]
**Target Users**: [To be defined]

## Core Requirements
**Problem Statement**: [To be defined]
**Key Features**: [To be defined]
**Success Criteria**: [To be defined]

## Technical Context
**Technology Stack**: [To be defined]
**Development Environment**: [To be defined]
**Deployment Target**: [To be defined]

## Constraints and Preferences
**Timeline**: [To be defined]
**Team Size**: [To be defined]
**Experience Level**: [To be defined]
EOF
                    ;;
                "activeContext.md")
                    cat > "$MEMORY_BANK_DIR/$file" << 'EOF'
# Active Context

## Current Work Focus
**Primary Objective**: [Current main task]
**Current Phase**: [Planning | Development | Testing | Review]
**Priority Level**: [High | Medium | Low]

## Recent Changes
- [Recent change 1]
- [Recent change 2]

## Next Steps
1. [Next action item 1]
2. [Next action item 2]

## Critical Patterns
- [Important pattern or decision 1]
- [Important pattern or decision 2]
EOF
                    ;;
                *)
                    cat > "$MEMORY_BANK_DIR/$file" << EOF
# ${file%.md}

## Overview
[To be documented]

## Details
[To be filled in]
EOF
                    ;;
            esac
            echo -e "${GREEN}✓${NC} Created $file"
        fi
    done
}

# Main execution
main() {
    local fix_mode=false
    local verbose_mode=false
    local total_errors=0

    # Parse arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            --fix)
                fix_mode=true
                shift
                ;;
            --verbose)
                verbose_mode=true
                shift
                ;;
            --help)
                echo "Usage: $0 [--fix] [--verbose] [--help]"
                echo "  --fix     Create missing files with templates"
                echo "  --verbose Show detailed analysis"
                echo "  --help    Show this help message"
                exit 0
                ;;
            *)
                echo "Unknown option: $1"
                exit 1
                ;;
        esac
    done

    print_header

    # Validate directory structure
    if ! validate_directory_structure; then
        ((total_errors += $?))
    fi

    echo
    echo -e "${BLUE}Checking required files...${NC}"

    # Check core files
    for file in "${REQUIRED_FILES[@]}"; do
        if ! check_file_exists "$file"; then
            ((total_errors++))
        elif [[ $verbose_mode == true ]]; then
            check_file_content "$file"
            check_markdown_format "$file"
        fi
    done

    echo
    echo -e "${BLUE}Checking instruction files...${NC}"

    # Check instruction files
    for file in "${INSTRUCTION_FILES[@]}"; do
        if ! check_file_exists "$file"; then
            ((total_errors++))
        fi
    done

    echo
    echo -e "${BLUE}Checking prompt files...${NC}"

    # Check prompt files
    for file in "${PROMPT_FILES[@]}"; do
        if ! check_file_exists "$file"; then
            ((total_errors++))
        fi
    done

    # Check cross-references
    if [[ $verbose_mode == true ]]; then
        echo
        if ! check_cross_references; then
            ((total_errors += $?))
        fi
    fi

    # Fix mode
    if [[ $fix_mode == true ]] && [[ $total_errors -gt 0 ]]; then
        echo
        create_missing_files
    fi

    # Generate report
    generate_report $total_errors

    # Exit with appropriate code
    if [[ $total_errors -gt 5 ]]; then
        exit 1
    else
        exit 0
    fi
}

# Run main function
main "$@"
