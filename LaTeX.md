# LaTeX

- [MacTeX](https://tug.org/mactex/)
- [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop) / [Snippets and shortcuts](https://github.com/James-Yu/LaTeX-Workshop/wiki/Snippets)

See [LaTeX Cheat Sheet](LaTeX%20Cheat%20Sheet.pdf) for common shortcuts.
## Local installation

Install **TeX Live** locally using one of the two official Mac packages—**MacTeX** or **BasicTeX**.

Get [Zsh](Zsh.md) and [Fish](Fish.md) configurations for **TeX Live** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/zsh/zshenv https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/zsh/zshenv/tex.zsh
```

```shell
wget -P ~/.config/fish/conf.d https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/conf.d/tex.fish
```

Source and verify the installation.

```zsh
which pdflatex
```
