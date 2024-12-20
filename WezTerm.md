# WezTerm

- [WezTerm](https://wezfurlong.org/wezterm/index.html) / [Configuration](https://wezfurlong.org/wezterm/config/files.html)
- [Catppuccin (GitHub)](https://github.com/catppuccin/wezterm)

## Shortcuts

See [[WezTerm]] [default key assignments](https://wezfurlong.org/wezterm/config/default-keys.html) for more.

- [ ] Review more shortcuts for [Quick Select Mode](https://wezfurlong.org/wezterm/quickselect.html) and [Copy Mode](https://wezfurlong.org/wezterm/copymode.html). 

| Shortcut                                             | Action                  |
| ---------------------------------------------------- | ----------------------- |
| <kbd>control</kbd> <kbd>shift</kbd> <kbd>space</kbd> | Enter QuickSelect mode. |
| <kbd>option</kbd> <kbd>enter</kbd>                   | Toggle fullscreen.      |

Re-mapped commands. See [[#Configuration]].

| Shortcut                                         | Action                         |
| ------------------------------------------------ | ------------------------------ |
| <kbd>command</kbd> <kbd>K</kbd>                  | Clear viewport and scrollback. |
| <kbd>command</kbd> <kbd>shift</kbd> <kbd>K</kbd> | Clear scrollback only.         |

## Installation

Download and install **WezTerm** directly from the official website.

Make sure a **Nerd Font** is installed.

Copy the following to `~/.zshenv` for [[Zsh]].

```zsh
export PATH="/Applications/WezTerm.app/Contents/MacOS:$PATH"
```

Copy the following to `~/.config/fish/config.fish` for [[Fish]].

```shell
set -gx PATH $PATH /Applications/WezTerm.app/Contents/MacOS
```
## Configuration

Move **WezTerm** configuration file to the configuration directory.

```shell
cp ~/.wezterm.lua ~/.config/wezterm/wezterm.lua
```

Get custom configuration from [dotfiles](https://github.com/lukejanicke/dotfiles).

```shell
wget -P ~/.config/wezterm https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/wezterm/wezterm.lua
```
