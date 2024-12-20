# Zsh

- [Zsh](https://www.zsh.org) / [Prompt expansion](https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html)

## Commands

Make [[Zsh]] the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /bin/zsh
```

Confirm which shell is the system default.

```shell
dscl . -read /Users/$(whoami) UserShell
```

## Configuration

Get custom `.zshrc`, `.zshenv` and `.zprofile` configurations from [dotfiles](https://github.com/lukejanicke/dotfiles).

```shell
wget -P ~/ https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.zshrc
wget -P ~/ https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.zshenv
wget -P ~/ https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.zprofile
```
