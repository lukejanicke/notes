# fzf

- [fzf](https://junegunn.github.io/fzf/) / [Shell Integration](https://junegunn.github.io/fzf/shell-integration/)

## Usage

| Shortcut                        | Description                                                                                             |
| ------------------------------- | ------------------------------------------------------------------------------------------------------- |
| <kbd>control</kbd> <kbd>R</kbd> | Search commmand history.<br>Optionally copy selected command into clipboard using `pbcopy`.             |
| <kbd>control</kbd> <kbd>T</kbd> | Search files and directories.<br>Preview file content using `bat` or directory structure using `eza`.   |
| <kbd>option</kbd> <kbd>C</kbd>  | Search directories.<br>Print tree structure in the preview window.<br>`cd` into the selected directory. |

| Command        | Description                                                   |
| -------------- | ------------------------------------------------------------- |
| `code **<tab>` | Fuzzy completion for files under the current directory.       |
| `cd **<tab>`   | Fuzzy completion for directories under the current directory. |

> [!note] Fuzzy completion
> [Fuzzy completion](https://junegunn.github.io/fzf/shell-integration/#fuzzy-completion-for-bash-and-zsh) is available for **Bash** and [Zsh](Zsh.md), but not [Fish](Fish.md).

## Install

Install **fzf** with [Homebrew](Homebrew.md).

```shell
brew install fzf
```

Also install [eza](eza.md), [bat](bat.md), [fd](fd.md), and [zoxide](zoxide.md).
## Configure

Get [Zsh](Zsh.md) and [Fish](Fish.md) configurations for **fzf** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/zsh/zshrc https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/zsh/zshrc/fzf.zsh
```

```shell
wget -P ~/.config/fish/conf.d https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/conf.d/fzf.fish
wget -P ~/.config/fish/functions https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/functions/fzf.fish
```
