
> [!WARNING] Before you do anything — don't force push
> Force pushing rewrites shared history and can permanently delete your teammates' commits. Use the workflows below instead — they're safe and reversible.

---

# Scenario 1 — Classic Merge Conflict

> [!info] What happened?
> You and a colleague both edited `TC-AUTH-001-Login.md` at the same time. They pushed first. Now Git is refusing your push.

# Steps

**1. Spot the conflicted file** — Git tells you exactly where the problem is:
```
CONFLICT (content): Merge conflict in
04-Test-Cases/TC-AUTH-001-Login.md
```

**2. Open the file** in VS Code or Obsidian and look for the conflict markers:
```
<<<<<<< HEAD          ← your version
status: Ready
assigned_to: Tester_A
=======
status: In-Progress
assigned_to: Tester_B
>>>>>>> origin/main   ← their version
```

**3. Delete the markers and keep the right content.** If your colleague is actively tracking execution, use their status:
```markdown
status: Ready
assigned_to: Tester_A
```

**4. Stage, commit, and push:**
```bash
git add 04-Test-Cases/TC-AUTH-001-Login.md
git commit -m "chore: resolve merge conflict in TC-AUTH-001 frontmatter"
git push origin main
```

---

# Scenario 2 — Diverged Branches

> [!info] What happened?
> You committed locally without pulling first. Meanwhile your colleague pushed new test runs. Your branch and the remote have diverged in different directions.

# Steps

**1. Use rebase instead of a plain pull** — this replays your commits on top of theirs, keeping history clean and linear:
```bash
git pull --rebase origin main
```

**2. If a conflict appears mid-rebase**, Git pauses. Fix the conflict markers in the file (same as Scenario 1), then stage it:
```bash
git add <resolved-file-path>
```

**3. Continue the rebase** — do *not* run `git commit` here, that breaks the flow:
```bash
git rebase --continue
```

**4. Push once rebase completes:**
```bash
git push origin main
```

---

# Scenario 3 — Obsidian Workspace Files Leaked into the Repo

> [!info] What happened?
> Someone ran `git add .` without a proper `.gitignore`. Files like `.obsidian/workspace.json` got committed, causing endless noisy conflicts for the whole team.

# Steps

**1. Untrack the file without deleting it locally:**
```bash
git rm --cached .obsidian/workspace.json

# or for the whole folder:
git rm -r --cached .obsidian/
```

**2. Add these lines to your `.gitignore`** at the repo root:
```
.obsidian/workspace
.obsidian/workspace.json
.obsidian/backups/
.obsidian/cache/
```

**3. Commit and push the fix:**
```bash
git add .gitignore
git commit -m "fix: remove local workspace files from git tracking"
git push origin main
```

**4. Have your teammate pull** — their local workspace settings stay intact, tracking just stops.

---

# Scenario 4 — Rolled Back a Wrong Edit

> [!info] What happened?
> You accidentally modified a master template or core standard. You need to discard your changes and restore the file to exactly what's on the remote.

## Case A — Not committed yet

Your changes are just unsaved local edits. Obsidian will instantly snap back:

```bash
git checkout -- 03-Shared/QA-Standards/7-Testing-Principles.md
```

## Case B — Committed but not pushed

Soft reset keeps your file changes as unstaged text. Hard reset destroys them completely:

```bash
# soft — keeps file changes as unstaged
git reset origin/main

# hard — destroys all changes permanently
git reset --hard origin/main
```

---

# Scenario 5 — Stash & Salvage

> [!info] What happened?
> You're halfway through editing test data files when an urgent fix drops. You need to pull immediately, but Git refuses because your work-in-progress is uncommitted.

## Steps

**1. Stash your draft work** — your workspace snaps back to its last clean state:
```bash
git stash save "WIP: adjusting transaction testing payloads"
```

**2. Pull the team's updates safely:**
```bash
git pull origin main
```

**3. Pop your drafts back** — they layer on top of the freshly pulled files:
```bash
git stash pop
```
