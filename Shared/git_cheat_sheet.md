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
