# zoxide

> A smarter `cd` command for your terminal

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
| `zi foo`                                | `cd` with interactive selection (using [[fzf]])         |
| `z foo` <kbd>space</kbd> <kbd>tab</kbd> | show interactive completions                            |

# Installation

Install **zoxide** with [[Homebrew]].

```shell
brew install zoxide
```

For [[Zsh]], add the following to `~/.zshrc`.

```shell
eval "$(zoxide init zsh)"
alias cd="z"
```

For [[Fish]], add the following to `~/.config/fish/config.fish`.

```shell
zoxide init fish | source
alias cd='z'
```
