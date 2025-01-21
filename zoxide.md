# zoxide

- [zoxide (GitHub)](https://github.com/ajeetdsouza/zoxide)

## Usage

| Command                                 | Description                                             |
| --------------------------------------- | ------------------------------------------------------- |
| `z foo`                                 | `cd` into highest ranked directory matching foo         |
| `z foo bar`                             | `cd` into highest ranked directory matching foo and bar |
| `z foo /`                               | `cd` into a subdirectory starting with foo              |
| `z ~/foo`                               | `z` also works like a regular `cd` command              |
| `z foo/`                                | `cd` into relative path                                 |
| `z ..`                                  | `cd` one level up                                       |
| `z -`                                   | `cd` into previous directory                            |
| `zi foo`                                | `cd` with interactive selection (using [fzf](fzf.md))   |
| `z foo` <kbd>space</kbd> <kbd>tab</kbd> | show interactive completions                            |

## Install

Install **zoxide** with [Homebrew](Homebrew.md).

```shell
brew install zoxide
```

Get [Zsh](Zsh.md) and [Fish](Fish.md) configurations for **zoxide** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/zsh/zshrc https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/zsh/zshrc/zoxide.zsh
```

```shell
wget -P ~/.config/fish/conf.d https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/conf.d/zoxide.fish
```
