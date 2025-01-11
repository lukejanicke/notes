- [ ] Move commands to [Terminal Commands and Shortcuts](Terminal%20Commands%20and%20Shortcuts.md).
# Git

- [Git](https://git-scm.com)
- [Git Cheatsheet (GitHub Education)](https://education.github.com/git-cheat-sheet-education.pdf)

## Commands

| Command                           | Description                                            |
| --------------------------------- | ------------------------------------------------------ |
| `git init`                        | Initialise a new local Git repository.                 |
| `git clone <url>`                 | Clone an existing repository.                          |
| `git status`                      | List changed, added and deleted files.                 |
| `git add <file>`                  | Track and/or stage a file.                             |
| `git add -u`                      | Stage tracked files (modified or deleted).             |
| `git add .`                       | Track and/or stage all files in the current directory. |
| `git reset`                       | Unstage all staged changes.                            |
| `git reset --hard`                | Discard uncommitted changes.                           |
| `git clean -f`                    | Force delete untracked files.                          |
| `git diff`                        | Show unstaged changes.                                 |
| `git diff --staged`               | Show staged changes.                                   |
| `git commit -m "<message>`        | Commit staged changes with a message.                  |
| `git remote add origin <url>`     | Add a remote repository. (Use SSH.)                    |
| `git fetch`                       | Fetch latest changes from the remote.                  |
| `git pull`                        | Fetch and merge changes from the remote.               |
| `git push -u origin main`         | Push changes and set default remote branch.            |
| `git push`                        | Push local changes to the default remote.              |
| `git branch`                      | List local branches.                                   |
| `git branch --all`                | List local and remote branches.                        |
| `git branch <name>`               | Create a new branch.                                   |
| `git checkout <branch>`           | Switch to a branch.                                    |
| `git rebase main`                 | Rebase current branch onto main.                       |
| `git merge <branch>`              | Merge another branch into the current branch.          |
| `git log`                         | Sow commit history.                                    |
| `git ls-tree --name-only -r HEAD` | List all files tracked in the current branch.          |

## Install

Install **Git** with [Homebrew](Homebrew.md).

```zsh
brew install git
```

## Configure

Set **Git** username, email address and default branch name.

```shell
git config --global user.name "Luke Janicke"
git config --global user.email "lukejanicke@outlook.com"
git config --global init.defaultBranch main
```

Verify that **Git** global configuration is set correctly.

```shell
git config --global user.name
git config --global user.email
git config --global init.defaultBranch
```
