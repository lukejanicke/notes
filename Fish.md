# Fish

- [Fish](https://fishshell.com) / [Documentation](https://fishshell.com/docs/current/index.html)
	- [Fish for bash users](https://fishshell.com/docs/current/fish_for_bash_users.html)
	- [Writing your own prompt](https://fishshell.com/docs/current/prompt.html)
- [Catppuccin (GitHub)](https://github.com/catppuccin/fish)


> [!note] Root User and Fish Theme
> Command highlighting from the Fish theme does not apply to the root user by default. This might be due to Fish using a separate configuration for the root account. It may be possible to resolve this by copying or symlinking the Fish configuration to `/var/root/.config/fish/config.fish`.

## Usage

See [[Fish]] [command line editor](https://fishshell.com/docs/current/interactive.html#command-line-editor).

| Command        | Description                                            |
| -------------- | ------------------------------------------------------ |
| `help`         | Open online help documentation.                        |
| `help command` | Open online help documentation for a specific command. |

Make [[Fish]] the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /opt/homebrew/bin/fish
```

Confirm which shell is the system default.

```shell
dscl . -read /Users/$(whoami) UserShell
```

## Installation

Install **Fish** with [[Homebrew]].

```shell
brew install fish
```

## Configuration

Configure **Fish** from `~/.config/fish/config.fish`.

Get custom configuration from [dotfiles](https://github.com/lukejanicke/dotfiles).

```shell
wget -P ~/.config/fish https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/config.fish
```

## Catppuccin

[dotfiles](https://github.com/lukejanicke/dotfiles) includes Catppuccin theme files and [[Fish]] configuration.

Install **Catppuccin** theme for **Fish** manually.

Create the **Fish** themes directory.

```shell
mkdir ~/.config/fish/themes
```

Copy **Catppuccin** theme files from the repository into the **Fish** themes directory.

```shell
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Latte.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Frappe.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Macchiato.theme
wget -P ~/.config/fish/themes https://raw.githubusercontent.com/catppuccin/fish/main/themes/Catppuccin%20Mocha.theme
```
