#!/usr/bin/env bash
# scripts/get-current-datetime.sh
echo "Current UTC date/time: $(date -u +"%Y-%m-%dT%H:%M:%SZ")"
# Outputs the current date and time in ISO 8601 format (America/Toronto local time)
set -euo pipefail

# Set TZ to America/Toronto for Québec City local time
export TZ=America/Toronto
echo "Current local date/time: $(date +"%Y-%m-%dT%H:%M:%S%z")"
