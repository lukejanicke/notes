# WezTerm

- [WezTerm](https://wezfurlong.org/wezterm/index.html) / [Configuration](https://wezfurlong.org/wezterm/config/files.html)
- [Catppuccin (GitHub)](https://github.com/catppuccin/wezterm)

See [[Terminal Shortcuts]] for **WezTerm** and other shell keyboard shortcuts.

See [[Terminal Commands]] for **WezTerm** and other shell commands.
## Installation

Download and install **WezTerm** directly from the official website.

Make sure **FiraCode Nerd Font Mono** is installed.

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
