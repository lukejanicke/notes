# Zsh

- [Zsh](https://www.zsh.org)

Make **Zsh** the system default shell.

```shell
chsh -s /bin/zsh
```

Make **Zsh** the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /bin/zsh
```

Confirm which shell is the system default.

```shell
dscl . -read /Users/$(whoami) UserShell
```

## Configuration

Create **Zsh** configuration directories if they do not already exist.

```shell
mkdir -p ~/.config/zsh/{zshenv,zprofile,zshrc}
```

Get `.zshenv`, `.zprofile` and `.zshrc` from [Dotfiles](Dotfiles.md) with **curl**.

```shell
curl -o ~/.zshenv https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zshenv
curl -o ~/.zprofile https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zprofile
curl -o ~/.zshrc https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zshrc
```

Get the **Zsh** completion search path configuration.

```shell
curl -o ~/.config/zsh/zshrc/fpath.zsh https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/zsh/zshrc/fpath.zsh
```

Install [wget](wget.md) to simplify setup of other dotfiles.

The `local-bin.zsh` fragment does not have a home. It lives here now.

```
curl -o ~/.config/zsh/zshenv/local-bin.zsh https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/zsh/zshenv/local-bin.zsh
```
