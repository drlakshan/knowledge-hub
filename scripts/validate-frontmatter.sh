#!/bin/bash
# Validates YAML frontmatter in all Markdown files
# Portable: runs on any system with bash + grep
# Called by CI configs (GitHub Actions, GitLab CI, etc.)

set -e
ERRORS=0
CHECKED=0

for file in $(find . -name "*.md" -not -path "./node_modules/*" -not -path "./.git/*"); do
  # Check if file has frontmatter
  if head -1 "$file" | grep -q "^---$"; then
    CHECKED=$((CHECKED + 1))
    
    # Check for required fields based on directory
    dir=$(dirname "$file")
    
    if [[ "$dir" == *"notes"* ]]; then
      for field in "title" "date" "status" "tags"; do
        if ! grep -q "^${field}:" "$file"; then
          echo "ERROR: $file missing required field: $field"
          ERRORS=$((ERRORS + 1))
        fi
      done
    fi
    
    if [[ "$dir" == *"prompts"* ]]; then
      for field in "id" "version" "domain"; do
        if ! grep -q "^${field}:" "$file"; then
          echo "ERROR: $file missing required field: $field"
          ERRORS=$((ERRORS + 1))
        fi
      done
    fi
  fi
done

echo ""
echo "Checked: $CHECKED files"
echo "Errors: $ERRORS"

if [ $ERRORS -gt 0 ]; then
  exit 1
fi
echo "All frontmatter valid!"
