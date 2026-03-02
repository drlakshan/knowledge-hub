#!/bin/bash
# Checks for broken internal links between Markdown files
# Portable: runs on any system with bash

set -e
ERRORS=0

for file in $(find . -name "*.md" -not -path "./.git/*"); do
  # Find markdown links
  grep -oP '\[.*?\]\(((?!http).*?\.md)\)' "$file" 2>/dev/null | while read -r match; do
    link=$(echo "$match" | grep -oP '\((.+?)\)' | tr -d '()')
    dir=$(dirname "$file")
    target="$dir/$link"
    if [ ! -f "$target" ] && [ ! -f "$link" ]; then
      echo "BROKEN LINK in $file: $link"
      ERRORS=$((ERRORS + 1))
    fi
  done
done

if [ $ERRORS -gt 0 ]; then
  echo "$ERRORS broken links found"
  exit 1
fi
echo "All internal links valid!"
