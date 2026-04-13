# Homebrew

- [Homebrew](https://brew.sh) / [GitHub](https://github.com/Homebrew/brew)

## Packages

- [x] [1Password CLI](1Password%20CLI.md)
- [x] [AWS CLI](AWS%20CLI.md)
- [ ] [bat](bat.md)
- [x] [Codex CLI](Codex%20CLI.md)
- [ ] [eza](eza.md)
- [ ] [fd](fd.md)
- [ ] [FFmpeg](FFmpeg.md)
- [ ] [Fish](Fish.md)
- [x] [fnm](fnm.md) (→ [Node](Node.md))
- [ ] [fzf](fzf.md)
- [x] [Git](Git.md)
- [ ] [Go](Go.md)
- [ ] [mpv](mpv.md)
- [ ] [Neovim](Neovim.md)
- [ ] [Pandoc](Pandoc.md)
- [ ] [pyenv](pyenv.md) (→ [Python](Python.md))
- [ ] [ripgrep](ripgrep.md)
- [ ] [Starship](Starship.md)
- [ ] [thefuck](thefuck.md)
- [ ] [tldr](tldr.md)
- [ ] [Typst](Typst.md)
- [ ] [uv](uv.md)
- [x] [wget](wget.md)
- [ ] [yt-dlp](yt-dlp.md)
- [ ] [zoxide](zoxide.md)

## Install

First, install [Command Line Tools](Command%20Line%20Tools.md).

Install **Homebrew** with the official install script.

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Get [Zsh](Zsh.md) configuration for **Homebrew** from [Dotfiles](Dotfiles.md) with **curl**.

```shell
curl -o ~/.config/zsh/zshenv/homebrew.zsh https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/zsh/zshenv/homebrew.zsh
```

Source [Zsh](Zsh.md) configuration for **Homebrew** from `~/.zshenv`.

```shell
# Homebrew
source ~/.config/zsh/zshenv/homebrew.zsh
```

Get [Fish](Fish.md) configuration for **Homebrew** when installing [Fish](Fish.md).