# fzf

- [fzf](https://junegunn.github.io/fzf/) / [Shell Integration](https://junegunn.github.io/fzf/shell-integration/)

## Usage

| Shortcut                        | Description                                                                                                                                     |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| <kbd>control</kbd> <kbd>R</kbd> | Paste the selected command from history onto the command-line<br><kbd>control</kbd> <kbd>T</kbd> Copy the command into clipboard using `pbcopy` |
| <kbd>control</kbd> <kbd>T</kbd> | Paste the selected files and directories onto the command-line                                                                                  |
| <kbd>option</kbd> <kbd>C</kbd>  | Print                                                                                                                                           |

| Command        | Description                                                   |
| -------------- | ------------------------------------------------------------- |
| `code **<tab>` | Fuzzy completion for files under the current directory.       |
| `cd **<tab>`   | Fuzzy completion for directories under the current directory. |

> [!note] Fuzzy completion
> [Fuzzy completion](https://junegunn.github.io/fzf/shell-integration/#fuzzy-completion-for-bash-and-zsh) is available for **Bash** and [[Zsh]], but not [[Fish]].

## Installation

Install **fzf** with [[Homebrew]].

```shell
brew install fzf
```

Also install [[eza]], [[bat]], [[fd]], and [[zoxide]].
## Configuration

Configure **fzf** from `~/.zshrc` for [[Zsh]], or `~/.config/fish/config.fish` for [[Fish]].

See [dotfiles](https://github.com/lukejanicke/dotfiles) for custom configuration.
