# Zsh

- [Zsh](https://www.zsh.org) / [Prompt expansion](https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html)

## Configure

Get `.zshrc`, `.zshenv` and `.zprofile` from [[Dotfiles]] with **curl**.

```shell
curl -o .zshrc https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zshrc
curl -o .zshenv https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zshenv
curl -o .zprofile https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zprofile
```

Make [[Zsh]] the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /bin/zsh
```

Confirm which shell is the system default.

```shell
dscl . -read /Users/$(whoami) UserShell
```
