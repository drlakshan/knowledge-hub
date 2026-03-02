#!/bin/bash
# Generates knowledge statistics from repo contents
# Portable: runs on any system with bash

echo "═══════════════════════════════════════"
echo "  Knowledge Repository Statistics"
echo "  Generated: $(date +%Y-%m-%d)"
echo "═══════════════════════════════════════"
echo ""

# Count files by type
echo "Files by type:"
for ext in md yml yaml json; do
  count=$(find . -name "*.${ext}" -not -path "./.git/*" | wc -l)
  if [ "$count" -gt 0 ]; then
    echo "  .${ext}: ${count}"
  fi
done

# Count notes by status (if research-notes repo)
if [ -d "notes" ]; then
  echo ""
  echo "Notes by status:"
  for status in seed growing evergreen; do
    count=$(grep -rl "status: ${status}" notes/ 2>/dev/null | wc -l)
    echo "  ${status}: ${count}"
  done
fi

# Count prompts by domain (if ai-prompts repo)
if [ -d "prompts" ]; then
  echo ""
  echo "Prompts by domain:"
  for domain in prompts/*/; do
    if [ -d "$domain" ]; then
      name=$(basename "$domain")
      count=$(find "$domain" -name "*.md" | wc -l)
      echo "  ${name}: ${count}"
    fi
  done
fi

# Git stats
echo ""
echo "Git statistics:"
echo "  Total commits: $(git rev-list --count HEAD 2>/dev/null || echo 'N/A')"
echo "  Tags: $(git tag | wc -l 2>/dev/null || echo 'N/A')"
echo "  Branches: $(git branch | wc -l 2>/dev/null || echo 'N/A')"
