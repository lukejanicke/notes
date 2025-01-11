# eza

- [eza](https://eza.rocks) / [GitHub](https://github.com/eza-community/eza)

## Install

Install **eza** with [Homebrew](Homebrew.md).

```shell
brew install eza
```

## Configure

Install a [Nerd Font](Nerd%20Fonts.md).

Configure **eza** in [Zsh](Zsh.md) and [Fish](Fish.md).

```shell
# ~/.zshrc

# eza
alias ls='eza --color=always --icons=always'
alias tree='eza --tree --color=always --icons=always'
```

```shell
# ~/.config/fish/config.fish

if status is-interactive

    # eza
    function ls
        eza --color=always --icons=always $argv
    end
    function tree
        eza --tree --color=always --icons=always $argv
    end

end
```
