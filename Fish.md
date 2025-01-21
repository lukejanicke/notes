# Fish

- [Fish](https://fishshell.com) / [Documentation](https://fishshell.com/docs/current/index.html)
	- [Fish for bash users](https://fishshell.com/docs/current/fish_for_bash_users.html)
	- [Writing your own prompt](https://fishshell.com/docs/current/prompt.html)
- [Catppuccin (GitHub)](https://github.com/catppuccin/fish)

## Install

Install **Fish** with [Homebrew](Homebrew.md).

```shell
brew install fish
```

---
*DO IT THIS WAY FROM NOW ON*

Add `/opt/homebrew/bin/fish` to `/etc/shells`.

```shell
echo /opt/homebrew/bin/fish >> /etc/shells
```

Make **Fish** the system default shell.

```shell
chsh -s /opt/homebrew/bin/fish
```

---
*I DO NOT KNOW WHY I DIT IT THIS WAY BEFORE*

Make **Fish** the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /opt/homebrew/bin/fish
```

Confirm which shell is the system default.

```shell
dscl . -read /Users/$(whoami) UserShell
```

---
## Configure

Get `~/.config/fish/config.fish` from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/fish https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/fish/config.fish
```

Get **Catppuccin** theme files for **Fish** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/fish/themes/Catppuccin%20Frappe.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/fish/themes/Catppuccin%20Latte.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/fish/themes/Catppuccin%20Macchiato.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/fish/themes/Catppuccin%20Mocha.theme
```

Get [Homebrew](Homebrew.md) configuration for **Fish** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/fish/conf.d https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/fish/conf.d/homebrew.fish
```
