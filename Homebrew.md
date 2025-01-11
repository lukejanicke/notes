# Homebrew

- [Homebrew](https://brew.sh) / [GitHub](https://github.com/Homebrew/brew)

## Packages

- [x] [1Password CLI](1Password%20CLI.md)
- [x] [bat](bat.md)
- [x] [eza](eza.md)
- [x] [fd](fd.md)
- [x] [FFmpeg](FFmpeg.md)
- [x] [Fish](Fish.md)
- [x] [fzf](fzf.md)
- [x] [Git](Git.md)
- [ ] [Go](Go.md)
- [x] [mpv](mpv.md)
- [ ] [Neovim](Neovim.md)
- [ ] ~~[Pandoc](Pandoc.md)~~
- [x] pyenv (→ [Python](Python.md))
- [x] [ripgrep](ripgrep.md)
- [x] [Starship](Starship.md)
- [x] [thefuck](thefuck.md)
- [x] [tldr](tldr.md)
- [ ] [Typst](Typst.md)
- [x] [wget](wget.md)
- [x] xz (See [Python](Python.md))
- [x] [yt-dlp](yt-dlp.md)
- [x] [zoxide](zoxide.md)

## Install

First, install [Command Line Tools](Command%20Line%20Tools.md) manually.

Install **Homebrew** with the official install script.

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For [Zsh](Zsh.md), the following is needed in `~/.zprofile`.

```zsh
eval "$(/opt/homebrew/bin/brew shellenv)"
```

For [Fish](Fish.md), the following is needed in `~/.config/fish/config.fish`.

```shell
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
set -gx HOMEBREW_PREFIX /opt/homebrew
set -gx HOMEBREW_CELLAR /opt/homebrew/Cellar
set -gx HOMEBREW_REPOSITORY /opt/homebrew
set -gx MANPATH /opt/homebrew/share/man $MANPATH
set -gx INFOPATH /opt/homebrew/share/info $INFOPATH
```

## Uninstall

Remove all packages and dependencies.

```
brew list | xargs brew uninstall --force
```

Uninstall Homebrew itself.

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
