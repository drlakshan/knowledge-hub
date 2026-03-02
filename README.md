# 🧠 Knowledge Hub — Dr. MTD Lakshan

> Central index for my versioned knowledge system.  
> Medical Education × Artificial Intelligence

## Knowledge Map

```mermaid
graph TB
    HUB[🧠 knowledge-hub] --> PRES[📊 markdown-presentations]
    HUB --> RN[📝 research-notes]
    HUB --> CURR[🎓 med-ed-curriculum]
    HUB --> AI[🤖 ai-prompts-workflows]
    HUB --> CV[📄 curriculum-vitae]
    HUB --> JOURNEY[🚀 ai-journey]
    
    RN --> |feeds into| PRES
    RN --> |informs| CURR
    AI --> |enhances| CURR
    AI --> |powers| PRES
    JOURNEY --> |milestones| HUB
    
    style HUB fill:#7c3aed,color:#fff
    style PRES fill:#3b82f6,color:#fff
    style RN fill:#22c55e,color:#fff
    style CURR fill:#f59e0b,color:#fff
    style AI fill:#ec4899,color:#fff
    style CV fill:#64748b,color:#fff
    style JOURNEY fill:#14b8a6,color:#fff
```

## Active Repositories

| Repo | Domain | Visibility | Status |
|------|--------|------------|--------|
| [knowledge-hub](https://github.com/drlakshan/knowledge-hub) | Central index | Public | 🟢 Active |
| [markdown-presentations](https://github.com/drlakshan/markdown-presentations) | Marp talks | Public | 🟢 Active |
| [research-notes](https://github.com/drlakshan/research-notes) | Research & literature | Private | 🟢 Active |
| [med-ed-curriculum](https://github.com/drlakshan/med-ed-curriculum) | Course design | Private | 🟢 Active |
| [ai-prompts-workflows](https://github.com/drlakshan/ai-prompts-workflows) | AI prompt library | Public | 🟢 Active |
| [curriculum-vitae](https://github.com/drlakshan/curriculum-vitae) | CV (branched) | Private | 🟢 Active |
| [ai-journey](https://github.com/drlakshan/ai-journey) | AI milestones | Private | 🟢 Active |

## Archived Repositories

`langchain` · `youtube-fabric-gui` · `twitter-meded-ai` · `nuxt-app` · `haem` · `entcollege` · `healthlk` · `dummy` · `portfolio_4--drive`

## Intellectual Changelog

See [CHANGELOG.md](CHANGELOG.md) for major milestones across all repos.

## Portability

This entire system is designed for zero vendor lock-in:
- All content is plain Markdown + YAML
- Automation logic lives in `scripts/` (not CI-specific configs)
- CITATION.cff provides platform-independent citation metadata
- See any repo's `ci-templates/` for multi-platform CI configs

## Citation

If you use any of this work, please cite using the CITATION.cff file in the relevant repository, or reference this hub.

---

*Built with Git. Portable by design. No vendor lock-in.*
