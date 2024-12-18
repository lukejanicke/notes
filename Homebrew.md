# Homebrew

- [Homebrew](https://brew.sh)

## Packages

- [x] [[1Password CLI]]
- [x] [[bat]]
- [x] [[eza]]
- [x] [[fd]]
- [x] [[FFmpeg]]
- [x] [[Fish]]
- [x] fzf
- [x] git
- [ ] ~~go~~
- [x] [[mpv]]
- [x] nvm (→ [[Node]])
- [x] [[Neovim]]
- [ ] ~~[[Pandoc]]~~
- [x] pyenv (→ [[Python]])
- [x] ripgrep
- [x] starship
- [x] thefuck
- [x] tlrc
- [ ] ~~[[Typst]]~~
- [x] wget
- [x] xz (See [[Python]])
- [x] [[zoxide]]

## Installation

First, install [[Command Line Tools]] manually.

Install **Homebrew** with the official install script.

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For [[Zsh]], add the following to `~/.zprofile`.

```zsh
eval "$(/opt/homebrew/bin/brew shellenv)"
```

For [[Fish]], add the following to `~/.config/fish/config.fish`.

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
