# pyenv

- [pyenv (GitHub)](https://github.com/pyenv/pyenv)

## Install

Install **pyenv** with [Homebrew](Homebrew.md).

```shell
brew install pyenv
```

Get [Zsh](Zsh.md) and [Fish](Fish.md) configurations for **pyenv** from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.config/zsh/zshenv https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/zsh/zshenv/pyenv.zsh
```

```shell
wget -P ~/.config/fish/conf.d https://raw.githubusercontent.com/lukejanicke/dotfiles/master/.config/fish/conf.d/pyenv.fish
```

For [Fish](Fish.md), contrary to the [installation instructions](https://github.com/pyenv/pyenv?tab=readme-ov-file#b-set-up-your-shell-environment-for-pyenv), you do not need to run `set -Ux PYENV_ROOT $HOME/.pyenv` and `fish_add_path $PYENV_ROOT/bin` at the command line if **pyenv** was installed via [Homebrew](Homebrew.md). That step is for a [Git](Git.md) installation only.