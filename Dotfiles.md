# Dotfiles

- [ ] Complete [[#Redeployment]] section.

- [Dotfiles (GitHub)](https://github.com/lukejanicke/dotfiles)

## Quick commands

```shell
dotfiles add <dotfile>               # Track/stage <file>
dotfiles add -u                      # Stage all tracked files
dotfiles commit -m "added <dotfile>" # Commit all staged changes with message
dotfiles push origin main            # Upload to GitHub
```

## Setup

Create a bare repository in `~/Documents`.

```shell
git init --bare ~/Documents/Dotfiles
```

Create an alias for [[Zsh]].

```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/Documents/Dotfiles --work-tree=$HOME'
```

Create an alias function for [[Fish]].

```shell
function dotfiles; /usr/bin/git --git-dir=$HOME/Documents/Dotfiles --work-tree=$HOME $argv; end
```

Do not show untracked files.

```shell
dotfiles config --local status.showUntrackedFiles no
```

Add dotfiles to the repository and commit.

```shell
dotfiles add <dotfile>
dotfiles commit -m "let there be dotfiles"
```

Create a repository on GitHub ([lukejanicke](https://github.com/lukejanicke)/[dotfiles](https://github.com/lukejanicke/dotfiles)).

Add the remote repository to the bare repository.

```shell
dotfiles remote add origin git@github.com:lukejanicke/dotfiles.git
```

Push changes and set default remote branch.

```shell
dotfiles push -u origin main
```

# Redeployment

*To be completed.*