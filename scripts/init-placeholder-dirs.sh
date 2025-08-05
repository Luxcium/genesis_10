#!/usr/bin/env bash
set -euo pipefail

# Initialize placeholder directories for future development
for dir in lib web python; do
  mkdir -p "$dir"
  touch "$dir/.gitkeep"
  echo "Ensured $dir/.gitkeep"
done
