# bat

- [bat (GitHub)](https://github.com/sharkdp/bat)
- [Catppuccin (GitHub)](https://github.com/catppuccin/bat)

## Install

Install **bat** with [Homebrew](Homebrew.md).

```shell
brew install bat
```

## Configure

Get `.config/bat/config` from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/bat https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/bat/config
```

Get Catppuccin theme files from [dotfiles](https://github.com/lukejanicke/dotfiles) with [wget](wget.md).

```shell
wget -P ~/.config/bat/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/bat/themes/Catppuccin%20Latte.tmTheme
wget -P ~/.config/bat/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/bat/themes/Catppuccin%20Frappe.tmTheme
wget -P ~/.config/bat/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/bat/themes/Catppuccin%20Macchiato.tmTheme
wget -P ~/.config/bat/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/bat/themes/Catppuccin%20Mocha.tmTheme
```

Rebuild the **bat** cache.

```shell
bat cache --build
```

Get [Zsh](Zsh.md) and [Fish](Fish.md) configurations for **bat** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/zsh/zshrc https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/zsh/zshrc/bat.zsh
```

```shell
wget -P ~/.config/fish/conf.d https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/conf.d/bat.fish
wget -P ~/.config/fish/functions https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/functions/bat.fish
```
