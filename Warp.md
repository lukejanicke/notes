# Warp

- [Warp](https://www.warp.dev)
- [Catppuccin (GitHub)](https://github.com/catppuccin/warp)

## Installation

Download and install **Warp** directly from the official website.

## Catppuccin

[dotfiles](https://github.com/lukejanicke/dotfiles) includes Catppuccin theme files.

Install **Catppuccin** theme for **Fish** manually.

Create the **Warp** configuration directory with a theme subdirectory.

```shell
mkdir ~/.warp/themes
```

Copy **Catppuccin** theme files from the repository into the **Fish** themes directory.

```shell
wget -P ~/.warp/themes https://raw.githubusercontent.com/catppuccin/warp/refs/heads/main/themes/catppuccin_latte.yml
wget -P ~/.warp/themes https://raw.githubusercontent.com/catppuccin/warp/refs/heads/main/themes/catppuccin_frappe.yml
wget -P ~/.warp/themes https://raw.githubusercontent.com/catppuccin/warp/refs/heads/main/themes/catppuccin_macchiato.yml
wget -P ~/.warp/themes https://raw.githubusercontent.com/catppuccin/warp/refs/heads/main/themes/catppuccin_mocha.yml
```

In Settings / Appearance, set ‘Enforce minimum contrast’ to **Never**.