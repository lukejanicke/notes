# Fish

- [Fish](https://fishshell.com) / [Documentation](https://fishshell.com/docs/current/index.html)
	- [Fish for bash users](https://fishshell.com/docs/current/fish_for_bash_users.html)
	- [Writing your own prompt](https://fishshell.com/docs/current/prompt.html)
- [Catppuccin (GitHub)](https://github.com/catppuccin/fish)

## Install

Install **Fish** with [[Homebrew]].

```shell
brew install fish
```

## Configure

Get `~/.config/fish/config.fish` from [[Dotfiles]] with [[wget]].

```shell
wget -P ~/.config/fish https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/config.fish
```

Get **Catppuccin** theme files from [[Dotfiles]] with [[wget]].

```shell
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Latte.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Frappe.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Macchiato.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Mocha.theme
```

Make **Fish** the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /opt/homebrew/bin/fish
```

Confirm which shell is the system default.

```shell
dscl . -read /Users/$(whoami) UserShell
```
