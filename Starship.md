# Starship

- [Starship](https://starship.rs) / [Configuration](https://starship.rs/config/)

## Installation

Install a [Nerd Font](https://www.nerdfonts.com) such as **FiraCode Nerd Font Mono**.

Install **Starship** with [[Homebrew]].

```shell
brew install starship
```

For [[Zsh]], add the following to the end of `~/.zshrc`.

```shell
eval "$(starship init zsh)"
```

For [[Fish]], add the following to the end of `~/.config/fish/config.fish`.

```shell
starship init fish | source
```

## Configuration

Configure **Starship** from `~/.config/starship.toml`.

Get custom configuration from [dotfiles](https://github.com/lukejanicke/dotfiles).

```shell
wget -P ~/.config https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/starship.toml
```
