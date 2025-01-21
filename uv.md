# uv

- [GitHub](https://github.com/astral-sh/uv) / [Docs](https://docs.astral.sh/uv/)

## Install

Install **uv** with the official standalone install script to enable updating with `uv self update`.

```shell
curl -LsSf https://astral.sh/uv/install.sh | sh
```

The install script edits `~/.zshrc` and `~/.config/fish/conf.d/uv.env.fish` with commands to source `~/.local/bin/env` and `~/.local/bin/env.fish`, which ensure `~/.local/bin` is in PATH.

Remove `. "$HOME/.local/bin/env"` from `~/.zshrc`.

Delete `~/.config/fish/conf.d/uv.env.fish`.

Get [Zsh](Zsh.md) and [Fish](Fish.md) configurations for **uv** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/zsh/zshrc https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/zsh/zshrc/uv.zsh
```

```shell
wget -P ~/.config/fish/conf.d https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/conf.d/uv.fish
```
