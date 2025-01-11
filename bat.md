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
wget -P .config/bat https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/bat/config
```

```
# ~/.config/bat/config

--theme="Catppuccin Latte"
--theme="Catppuccin Frappe"
--theme="Catppuccin Macchiato"
--theme="Catppuccin Mocha"
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

Set **bat** theme based on macOS appearance in [Zsh](Zsh.md) and [Fish](Fish.md).

```shell
# ~/.zshrc

# Set bat theme based on macOS appearance
set_bat_theme() {
  if defaults read -g AppleInterfaceStyle 2>/dev/null | grep -q "Dark"; then
    export BAT_THEME="Catppuccin Mocha"
  else
    export BAT_THEME="Catppuccin Latte"
  fi
}
set_bat_theme
```

```shell
# ~/.config/fish/config.fish

if status is-interactive

    # Set themes based on macOS appearance
    function set_themes
        if defaults read -g AppleInterfaceStyle 2>/dev/null | grep -q "Dark"
            set -gx BAT_THEME "Catppuccin Mocha"
            fish_config theme choose "Catppuccin Mocha"
        else
            set -gx BAT_THEME "Catppuccin Latte"
            fish_config theme choose "Catppuccin Latte"
        end
    end
    set_themes

end
```
