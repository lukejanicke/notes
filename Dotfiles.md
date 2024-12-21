# Dotfiles

- [ ] Develop an alternative dotfile management system called Dotfiles that installs like Homebrew and provides the `dot` command, which handles all dotfile management and repository actions.

- [Dotfiles (GitHub)](https://github.com/lukejanicke/dotfiles)

## Quick commands

```shell
dotfiles add <file>               # Track/stage a <file>
dotfiles add -u                   # Stage all tracked files
dotfiles commit -m "added <file>" # Commit all staged changes with message
dotfiles push origin main         # Upload to GitHub
```

Show all files and directories being tracked.

```shell
dotfiles ls-tree -r --full-tree --name-only HEAD
```

## Setup

Create a bare repository in `~/Documents/Dotfiles`.

```shell
git init --bare ~/Documents/Dotfiles
```

Create an alias for [[Zsh]].

```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/Documents/Dotfiles --work-tree=$HOME'
```

Create a function for [[Fish]].

```shell
function dotfiles
	/usr/bin/git --git-dir=$HOME/Documents/Dotfiles --work-tree=$HOME $argv
end
```

Do not show untracked files.

```shell
dotfiles config --local status.showUntrackedFiles no
```

Add dotfiles to the repository and commit.

```shell
dotfiles add <file>
dotfiles commit -m "let there be dotfiles"
```

Create a repository on GitHub ([lukejanicke](https://github.com/lukejanicke)/[dotfiles](https://github.com/lukejanicke/dotfiles)).

Add the remote repository to the bare repository.

```shell
dotfiles remote add origin git@github.com/lukejanicke/dotfiles.git
```

Push changes and set default remote branch.

```shell
dotfiles push -u origin main
```

# Redeployment

Ensure the bare repository at `~/Documents/Dotfiles` is downloaded (via iCloud).

Alternatively, clone the repository.

```shell
git clone --bare git@github.com/lukejanicke/dotfiles.git ~/Documents/Dotfiles
```

Create the dotfiles alias for the current shell session.

```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/Documents/Dotfiles --work-tree=$HOME'
```

Check if git config is already set.

```shell
dotfiles config --get status.showUntrackedFiles
```

Configure git to not show untracked files in the home directory (only if previous command doesn't return “no”).

```shell
dotfiles config --local status.showUntrackedFiles no
```

Check if there are any existing files that would be overwritten.

```shell
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'}
```

Back up any conflicting files if needed.

```shell
backup_directory=~/Documents/Dotfiles\ Backup/$(date +%Y%m%d_%H%M%S)
mkdir -p "$backup_directory"
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | while read file; do
    if [ -e "$file" ]; then
        mv "$file" "$backup_directory/"
    fi
done
```

Deploy the dotfiles to their respective locations.

```shell
dotfiles checkout
```
