# Ghostty

- [Ghostty](https://ghostty.org) / [GitHub](https://github.com/ghostty-org/ghostty)

## Installation

Download and install **Ghostty** directly from the official website.

Alternatively, install via [[Homebrew]].

```shell
brew install --cask ghostty
```

## Configuration

Configure **Ghostty** from `~/.config/ghostty/config`.

Get custom configuration from [dotfiles](https://github.com/lukejanicke/dotfiles).

```shell
wget -P ~/.config/ghostty https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/ghostty/config
```

> [!note] Default configuration
> The default configuration path is `~/Library/Application\ Support/com.mitchellh.ghostty/config`. Configuration settings in `~/.config/ghostty/config` will override settings in the default configuration.

```config
# ~/.config/ghostty/config

# font-family = Iosevka Fixed
# font-family = Symbol Nerd Font Mono
# window-title-font-family = Inter Medium
auto-update = check
bold-is-bright = true
clipboard-paste-protection = true
clipboard-trim-trailing-spaces = true
copy-on-select = true
cursor-click-to-move = true
cursor-style = block
cursor-style-blink = true
desktop-notifications = true
font-family = IosevkaFixed Nerd Font Mono
font-size = 13
link-url = true
macos-auto-secure-input = true
macos-option-as-alt = true
macos-secure-input-indication = true
macos-titlebar-proxy-icon = hidden
macos-titlebar-style = hidden
macos-window-shadow = true
minimum-contrast = 1
mouse-hide-while-typing = true
quit-after-last-window-closed = true
resize-overlay = never
shell-integration = fish
shell-integration-features = cursor,sudo,title
theme = dark:catppuccin-mocha,light:catppuccin-latte
window-height = 30
window-inherit-font-size = false
window-inherit-working-directory = false
window-padding-balance = true
window-padding-x = 5
window-padding-y = 5
window-save-state = always
window-step-resize = true
window-width = 100
```