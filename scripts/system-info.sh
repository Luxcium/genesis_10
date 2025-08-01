#!/bin/bash
set -euo pipefail
# Script: system-info.sh
# Description: Display basic system information
# Mode: Script
# Source: scripts/README.md
# Timestamp: 2025-08-01

uname -a
echo "Disk usage:"
df -h
