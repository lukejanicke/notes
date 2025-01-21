# Homebrew

- [Homebrew](https://brew.sh) / [GitHub](https://github.com/Homebrew/brew)

## Packages

- [x] [1Password CLI](1Password%20CLI.md)
- [x] [AWS CLI](AWS%20CLI.md)
- [x] [bat](bat.md)
- [x] [eza](eza.md)
- [x] [fd](fd.md)
- [x] [FFmpeg](FFmpeg.md)
- [x] [Fish](Fish.md)
- [x] [fnm](fnm.md) (→ [Node](Node.md))
- [x] [fzf](fzf.md)
- [x] [Git](Git.md)
- [ ] [Go](Go.md)
- [ ] [mpv](mpv.md)
- [ ] [Neovim](Neovim.md)
- [ ] [Pandoc](Pandoc.md)
- [x] [pyenv](pyenv.md) (→ [Python](Python.md))
- [ ] [ripgrep](ripgrep.md)
- [x] [Starship](Starship.md)
- [x] [thefuck](thefuck.md)
- [x] [tldr](tldr.md)
- [ ] [Typst](Typst.md)
- [x] [uv](uv.md)
- [x] [wget](wget.md)
- [x] [yt-dlp](yt-dlp.md)
- [x] [zoxide](zoxide.md)

## Install

First, install [Command Line Tools](Command%20Line%20Tools.md) manually.

Install **Homebrew** with the official install script.

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Get [Zsh](Zsh.md) configuration for **Homebrew** from [Dotfiles](Dotfiles.md) with **curl**.

```shell
curl -o ~/.config/zsh/zprofile/homebrew.zsh https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/zsh/zprofile/homebrew.zsh
```

Get [Fish](Fish.md) configuration for **Homebrew** when installing [Fish](Fish.md).