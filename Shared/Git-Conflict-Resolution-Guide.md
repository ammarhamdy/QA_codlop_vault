---
type: guide
status: Ready
category: Git Operations
target_audiance: QA Team
---


# 🛠️ Git Advanced Scenarios & Conflict Resolution Guide

This guide details exactly how to handle common collaborative Git scenarios and resolve conflicts within our shared Obsidian Test Case Management System (TCMS).

> [!IMPORTANT] Obsidian Git Golden Rules
> 1. **Always Pull Before You Work:** Run `git pull` at the start of your shift to fetch your colleague's updates.
> 2. **Commit Atomically:** Commit logically grouped files (e.g., an entire Test Suite or a completed group of User Stories) rather than 50 unrelated changes.
> 3. **Close Notes While Merging:** If resolving a conflict in an active note, close the pane in Obsidian or reload it after fixing to prevent Obsidian's autosave from overwriting your fix.


---
# Scenario 1: 
**The Classic Merge Conflict (Simultaneous Note Editing)**

**What happened:** 
+ You and your colleague both edited the exact same test case (e.g., `TC-AUTH-001`) at the same time. 
+ Your colleague pushed first. 
+ When you run `git pull` or try to push, Git rejects it with a conflict.

## Step-by-Step Resolution
**Identify the conflicted files:** Git will output a failure message indicating the exact path:
```bash
CONFLICT (content): Merge conflict in 04-Test-Cases/TC-AUTH-001-Login.md
Automatic merge failed; fix conflicts and then commit the result.
```

Open the file in a code editor (VS Code) or Obsidian: 
Look for the native Git conflict markers:
	- `<<<<<<< HEAD` (Your local modifications)
	- `=======` (The divider line)
	- `>>>>>>> branch_or_commit_hash` (Your colleague's modifications from remote)
 
Example Front-matter Conflict:
```
 <<<<<<< HEAD
status: Ready
assigned_to: Tester_A
=======
status: In-Progress
assigned_to: Tester_B
>>>>>>> origin/main
```
**Fix the content:** Manually delete the markers (`<<<<<<<`, `=======`, `>>>>>>>`) and choose the correct values.

 Stage and commit the fix:
```sh
git add 04-Test-Cases/TC-AUTH-001-Login.md
git commit -m "chore: resolve merge conflict in TC-AUTH-001 frontmatter"
git push origin main
```


---
# Scenario 2: 
**Diverged Branches (The Out-of-Sync Local Repository)**

**What happened:** You committed changes locally without pulling first. Meanwhile, your colleague pushed new test runs to the remote branch. Your local branch and the remote branch have diverged.

## Step-by-Step Resolution
Instead of doing a standard `git pull` which creates an ugly, unnecessary "Merge branch..." commit in our clean history, use **Rebase**:

Run a rebase pull:
```
git pull --rebase origin main
```
Git will replay your local test case commits _on top_ of your colleague's remote commits.

If a conflict occurs during the rebase, Git will pause. Open the file, fix the conflict markers as shown in Scenario 1, and stage the file:
```
git add <resolved-file-path>
```

**CRITICAL:** Do _not_ run `git commit`. Continue the rebase:
```
git rebase --continue
```

Once complete, push clean, linear history upstream:
```
git push origin main
```


---
# Scenario 3:
Accidental Tracking of Workspace Clutter (`.obsidian/` leaked)

**What happened:** Your colleague accidentally ran `git add .` without a clean `.gitignore`, or their local configurations (like workspace layouts, pane distributions, or history caches) were pushed, causing continuous, noisy merge conflicts on files like `.obsidian/workspace.json`.

## Step-by-Step Resolution
Purge the file from Git tracking without deleting it locally:
```
git rm --cached .obsidian/workspace.json
```
(If the whole folder leaked, run `git rm -r --cached .obsidian/`)

**Verify/Update your `.gitignore`:** Ensure your `.gitignore` at the repository root contains these explicit lines:
```
.obsidian/workspace
.obsidian/workspace.json
.obsidian/backups/
.obsidian/cache/
```

Commit the extraction blueprint:
```
git add .gitignore
git commit -m "fix: remove local workspace properties from git index tracking"
git push origin main
```

Have your colleague run `git pull`. Their local workspace tracking will instantly detach without deleting their note configurations.


---
# Scenario 4:
I worked on the wrong note/broke a template, roll it back!

**What happened:** You accidentally modified a master core standard template or over-edited a reusable test step block, and you need to discard your local changes completely and restore it to matching what is currently on the GitHub main server.

## Step-by-Step Resolution
**Case A:** You haven't committed yet (it's just a dirty local file):
```sh
git checkout -- 03-Shared/QA-Standards/7-Testing-Principles.md
```
Obsidian will instantly flash and update the note UI back to its pristine state.

**Case B:** You already committed it locally but haven't pushed:
```sh
# This resets your branch pointer back to match remote, preserving your file changes as unstaged text 
git reset origin/main
```
(If you want to completely destroy the bad commit and all its text changes, run `git reset --hard origin/main`)


---
# Scenario 5:
Stash & Salvage (Quick context switching)

**What happened:** You are halfway through updating a set of test data files in `Common-Test-Data/` when an emergency regression issue pops up. You need to pull your colleague's latest hotfix script immediately, but Git refuses because your current work is incomplete and uncommitted.

## Step-by-Step Resolution
Save your draft work to a local temporary vault shelf:
```sh
git stash save "WIP: adjusting transaction testing payloads"
```
Your uncompleted changes vanish cleanly from your workspace, returning your vault to its last healthy snapshot.

Pull down the team updates safely:
```sh
git pull origin main
```

Pop your draft work back into your workspace:
```sh
git stash pop
```
Your workspace returns with your drafts intact, positioned on top of the newly pulled repository files!



