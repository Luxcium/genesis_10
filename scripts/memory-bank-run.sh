#!/bin/bash

# Memory Bank Workflow Script
# Runs initialization and validation sequentially

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"$SCRIPT_DIR/memory-bank-init.sh"
"$SCRIPT_DIR/memory-bank-validate.sh"
