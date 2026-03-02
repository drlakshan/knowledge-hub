# Intellectual Changelog

All notable milestones across the knowledge system.

## [2026-03-02] — System Genesis

### Added
- Initialized knowledge versioning system
- Created knowledge-hub, research-notes, med-ed-curriculum, ai-prompts-workflows
- Established portability layer with scripts/ abstraction
- Added CITATION.cff to all repositories

### Architecture Decisions
- Multi-repo approach (not monorepo) for independent versioning lifecycles
- Plain-text first: all knowledge in Markdown + YAML
- Portable automation: scripts/ over CI-specific logic
- Branch-per-audience for CV, branch-per-event for presentations
