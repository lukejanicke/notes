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
| `zi foo`                                | `cd` with interactive selection (using [[fzf]])         |
| `z foo` <kbd>space</kbd> <kbd>tab</kbd> | show interactive completions                            |

## Install

Install **zoxide** with [[Homebrew]].

```shell
brew install zoxide
```

Configure **zoxide** in [[Zsh]] and [[Fish]].

```shell
# ~/.zshrc

# zoxide
eval "$(zoxide init zsh)"
alias cd="z"
```

```shell
# ~/.config/fish/config.fish

if status is-interactive

    # zoxide
    zoxide init fish | source
    function cd
        z $argv
    end

end
```
