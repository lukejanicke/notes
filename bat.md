# bat

- [bat (GitHub)](https://github.com/sharkdp/bat)
- [Catppuccin (GitHub)](https://github.com/catppuccin/bat)
## Installation

Install **bat** with [[Homebrew]].

```shell
brew install bat
```

## Catppuccin

Create the **bat** configuration directory with a theme subdirectory.

```shell
mkdir -p "$(bat --config-dir)/themes"
```

Copy **Catppuccin** theme files from the repository into the **bat** themes directory.

```shell
wget -P "$(bat --config-dir)/themes" https://raw.githubusercontent.com/catppuccin/bat/main/themes/Catppuccin%20Latte.tmTheme
wget -P "$(bat --config-dir)/themes" https://raw.githubusercontent.com/catppuccin/bat/main/themes/Catppuccin%20Frappe.tmTheme
wget -P "$(bat --config-dir)/themes" https://raw.githubusercontent.com/catppuccin/bat/main/themes/Catppuccin%20Macchiato.tmTheme
wget -P "$(bat --config-dir)/themes" https://raw.githubusercontent.com/catppuccin/bat/main/themes/Catppuccin%20Mocha.tmTheme
```

Add the following to `~/.config/bat/config`.

```shell
--theme="Catppuccin Latte"
--theme="Catppuccin Frappe"
--theme="Catppuccin Macchiato"
--theme="Catppuccin Mocha"
```

Rebuild the **bat** cache.

```shell
bat cache --build
```
