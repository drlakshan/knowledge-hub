# Repository Archive Checklist

Use this checklist before archiving any repository.

## 1) Pre-archive safety checks
- [ ] Confirm canonical replacement repo (if any)
- [ ] Pull latest from remote (`git pull --rebase`)
- [ ] Verify no uncommitted changes (`git status`)
- [ ] Push all local branches/tags that matter
- [ ] Export/backup any non-versioned assets (if applicable)

## 2) Document closure in the repo
- [ ] Update `README.md` with:
  - [ ] `Status: Archived`
  - [ ] Archive date
  - [ ] Reason for archive
  - [ ] Link to canonical/active repo
- [ ] Add final note in `CHANGELOG.md` (if present)
- [ ] Ensure `CITATION.cff` still points to valid metadata/contact

## 3) Finalize git state
- [ ] Commit closure changes (message: `docs: mark repository as archived`)
- [ ] Create final tag (recommended): `archive-final-YYYY-MM`
- [ ] Push main branch and tags

## 4) GitHub archive steps
- [ ] GitHub → Repo → **Settings** → **Danger Zone**
- [ ] Click **Archive this repository**
- [ ] Verify banner shows archived status
- [ ] Lock down branch protections/webhooks only if needed

## 5) Update system-wide navigation
- [ ] Add repo to archived list in `knowledge-hub/README.md`
- [ ] Add migration link in knowledge map (if replacement exists)
- [ ] Update personal pinned repos/profile README (if needed)

## 6) Optional but useful
- [ ] Add `ARCHIVED.md` with quick context and successor links
- [ ] Add GitHub topic `archived`
- [ ] Keep issues/PRs open only if they have historical value

---

## Minimal command bundle

```bash
# safety check
git status

# closure commit
git add -A
git commit -m "docs: mark repository as archived"

# final tag
git tag archive-final-$(date +%Y-%m)

# push
git push origin main --tags
```
