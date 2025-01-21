# Zsh

- [Zsh](https://www.zsh.org)

---

Make **Zsh** the system default shell.

```shell
chsh -s /bin/zsh
```

---

Make **Zsh** the system default shell.

```shell
sudo dscl . -create /Users/$(whoami) UserShell /bin/zsh
```

Confirm which shell is the system default.

```shell
dscl . -read /Users/$(whoami) UserShell
```

---

## Configuration

Get `.zshenv`, `.zprofile` and `.zshrc` from [Dotfiles](Dotfiles.md) with **curl**.

```shell
curl -o ~/.zshenv https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zshenv
curl -o ~/.zprofile https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zprofile
curl -o ~/.zshrc https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.zshrc
```

Create **Zsh** configuration directories if they do not already exist.

```shell
mkdir -p ~/.config/zsh/{zshenv,zprofile,zshrc}
```
