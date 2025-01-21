# Ghostty

- [Ghostty](https://ghostty.org) / [GitHub](https://github.com/ghostty-org/ghostty)

## Install

Download and install **Ghostty** directly from the official website.

## Configure

Get `~/.config/ghostty/config` from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/ghostty https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/ghostty/config
```

Get **Catppuccin** themes for **Ghostty** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/ghostty/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/ghostty/themes/catppuccin-frappe
wget -P ~/.config/ghostty/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/ghostty/themes/catppuccin-latte
wget -P ~/.config/ghostty/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/ghostty/themes/catppuccin-macchiato
wget -P ~/.config/ghostty/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/ghostty/themes/catppuccin-mocha
```

> [!note] Default configuration
> The default configuration path is `~/Library/Application\ Support/com.mitchellh.ghostty/config`. Configuration settings in `~/.config/ghostty/config` will override settings in the default configuration.
