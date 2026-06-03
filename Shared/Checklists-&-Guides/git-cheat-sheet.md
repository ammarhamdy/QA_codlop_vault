
> [!WARNING] Team Git Rule
> Always run `git status` before pushing to ensure you aren't tracking local workspace clutter. Our master configuration rules are safely defined in your local `[[.gitignore]]` file!


> [!WARNING] Experiencing a Merge Conflict? > Do not force push! Refer directly to the [[Git-Conflict-Resolution-Guide]] inside this directory to safely resolve formatting conflicts without losing team test progress.


# Git Cheat Sheet

A comprehensive guide to common Git commands and workflows.

## Configuration
Set your identity and preferences.
```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
git config --global core.editor "vim"
git config --list # View all configuration settings
```

## Setup & Initialization
Start a new repository or obtain one from a remote location.
```bash
git init                    # Initialize a local Git repository
git clone <url>             # Clone a remote repository
```

## Basic Snapshotting
Manage changes to your files.
```bash
git status                  # Show the working tree status
git add <file>              # Add a file to the staging area
git add .                   # Add all changes to the staging area
git commit -m "Message"     # Commit staged changes with a message
git commit -a -m "Message"  # Add all tracked changes and commit
git diff                    # Show changes in the working tree (not staged)
git diff --staged           # Show changes in the staging area
```

## Branching & Merging
Isolate work in branches and combine them.
```bash
git branch                  # List local branches
git branch -a               # List all branches (local and remote)
git branch <branch-name>    # Create a new branch
git checkout <branch-name>  # Switch to a branch
git checkout -b <branch-name> # Create and switch to a new branch
git merge <branch-name>     # Merge a branch into the current one
git branch -d <branch-name> # Delete a local branch
```

## Sharing & Updating
Synchronize with a remote repository.
```bash
git remote add origin <url> # Add a remote repository
git remote -v               # View remote URLs
git fetch                   # Download objects and refs from another repository
git pull                    # Fetch and merge changes from a remote branch
git push origin <branch>    # Push local changes to a remote branch
```

## Inspection & Comparison
Examine history and changes.
```bash
git log                     # Show commit history
git log --oneline           # Show commit history in one line
git show <commit-hash>      # Show details about a specific commit
```

## Undoing Things
Correct mistakes or revert changes.
```bash
git checkout -- <file>      # Discard changes in a file (working tree)
git reset HEAD <file>       # Unstage a file
git reset --soft HEAD~1     # Undo last commit, keep changes in staging
git reset --hard HEAD~1     # Undo last commit and discard all changes
git revert <commit-hash>    # Create a new commit that undoes a previous one
```

## Stashing
Temporarily store uncommitted changes.
```bash
git stash                   # Stash changes in working tree and staging
git stash list              # List all stashes
git stash pop               # Apply the latest stash and remove it from list
git stash apply             # Apply the latest stash without removing it
```


## Updating from Remote
Download remote updates without modifying your local branch.
```sh
git fetch origin   # Download latest changes from remote
git fetch --all    # Download updates from all remotes
```

## Inspection & Comparison
Examine differences between local and remote branches before merging.
```sh
git diff HEAD origin/main    # Compare current commit with remote main
git diff main origin/main    # Compare local main with remote main
git log main..origin/main    # Show commits on remote not in local
git log origin/main..main    # Show commits on local not in remote
```

## Visual Comparison
Open a visual diff tool instead of terminal output.
```sh
git difftool main origin/main     # Visual comparison between branches
git difftool HEAD origin/main     # Visual comparison with current commit
```

## Updating Local Branch
Bring remote changes into your current branch.
```sh
git merge origin/main             # Merge remote main into current branch
git rebase origin/main            # Reapply your commits on top of remote main
git pull                          # Fetch + merge
git pull --rebase                 # Fetch + rebase
```

## Conflict Resolution
Handle merge or rebase conflicts.
```sh
git status                        # Show conflicted files
git add <file>                    # Mark conflict as resolved
git commit                        # Complete merge after resolving conflicts
git rebase --continue             # Continue rebase after resolving conflicts
git mergetool                     # Open configured merge tool
```

## Canceling Operations
Abort an in-progress merge or rebase.
```sh
git merge --abort                 # Cancel current merge
git rebase --abort                # Cancel current rebase
```

## Discard Local Changes
Throw away local modifications and restore a clean state.
```sh
git restore <file>                # Discard changes in a file
git restore .                     # Discard all unstaged changes
git reset --hard HEAD             # Discard all local changes
```

## Sync Local Branch with Remote
Make your branch exactly match the remote branch.
```sh
git fetch origin
git reset --hard origin/main      # Reset branch to remote state
```

## Remove Untracked Files
Delete files and folders Git is not tracking.
```sh
git clean -fd                     # Remove untracked files and directories
git clean -fdn                    # Preview what would be removed
```

## Full Clean Reset
Completely synchronize your repository with the remote.
```sh
git fetch origin
git reset --hard origin/main
git clean -fd
```

## Temporary Backup
Save your work before risky operations.
```sh
git stash                         # Save uncommitted changes
git stash list                    # Show stashes
git stash pop                     # Restore latest stash
```

## Safety Backup Branch
Create a backup before resetting or rebasing.
```sh
git branch backup-before-reset    # Create backup branch
git switch backup-before-reset    # Switch to backup branch
```

## Common Safe Workflow
Inspect remote changes before updating.
```sh
git fetch origin
git diff main origin/main
git log main..origin/main
git merge origin/main
```

## Common "Give Me Latest Code" Workflow
Ignore local work and get the latest repository state.
```sh
git fetch origin
git reset --hard origin/main
git clean -fd
```

