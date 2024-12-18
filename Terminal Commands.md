# Terminal Commands

- [ ] Move commands back to respective notes

## General

- [ ] Replicate for Zsh and Fish, nothing any differences

| Command            | Description                              |
| ------------------ | ---------------------------------------- |
| `man <command>`    | Display the complete system manual page. |
| `<command> --help` | Show a brief overview of basic usage.    |
| `tldr <command>`   | See [[#tldr]] below.                     |

See [[Git]] for Git commands.

## Shells

- [ ] Replicate for Zsh and Fish.

Make [[Fish]] the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /opt/homebrew/bin/fish
```

Make [[Zsh]] the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /bin/zsh
```

Confirm which shell is the system default.

```shell
dscl . -read /Users/$(whoami) UserShell
```


## Zsh

…

## Fish

| Command          | Description                                                     |
| ---------------- | --------------------------------------------------------------- |
| `help`           | Open online help documentation.                                 |
| `help [command]` | Open online help documentation for a specific command.          |

## eza

…

## fd

…

## fzf

| Shortcut                        | Description                                                                                                                                     |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| <kbd>control</kbd> <kbd>R</kbd> | Paste the selected command from history onto the command-line<br><kbd>control</kbd> <kbd>T</kbd> Copy the command into clipboard using `pbcopy` |
| <kbd>control</kbd> <kbd>T</kbd> | Paste the selected files and directories onto the command-line                                                                                  |
| <kbd>option</kbd> <kbd>C</kbd>  | Print                                                                                                                                           |
| `code **<tab>`                  | Fuzzy search for files under the current directory.                                                                                             |
| `cd **<tab>`                    | Fuzzy search for directories under the current directory.                                                                                       |

> [!note] Fuzzy completion
> [Fuzzy completion](https://junegunn.github.io/fzf/shell-integration/#fuzzy-completion-for-bash-and-zsh) is available for **Bash** and [[Zsh]], but not [[Fish]].

## tldr

| Command                       | Action                                           |
| ----------------------------- | ------------------------------------------------ |
| `tldr <command>`              | Print the `tldr` page for a specific command.    |
| `tldr <command> <subcommand>` | Print the `tldr` page for a specific subcommand. |
