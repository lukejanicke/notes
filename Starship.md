# Starship

- [Starship](https://starship.rs) / [Configuration](https://starship.rs/config/)

## Install

Install a [Nerd Font](https://www.nerdfonts.com) such as **FiraCode Nerd Font Mono**.

Install **Starship** with [Homebrew](Homebrew.md).

```shell
brew install starship
```

Enable Starship in [Zsh](Zsh.md) and [Fish](Fish.md).

```shell
# ~/.zshrc

# Starship
eval "$(starship init zsh)"
```


```shell
# ~/.config/fish/config.fish

if status is-interactive

    # Starship
    # Should be preceded by Homebrew path configuration!
    starship init fish | source

end
```

## Configure

Get `~/.config/starship.toml` from [Dotfiles](Dotfiles.md).

```shell
wget -P ~/.config https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/starship.toml
```
