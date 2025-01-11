# Python

- [Python](https://www.python.org)
- [pyenv](https://github.com/pyenv/pyenv)

## Packages

- [ ] IPython
- [ ] nbconvert
- [ ] Matplotlib
- [ ] NumPy
- [ ] Plotly
- [ ] SciPy

## Install

Install **pyenv** with [Homebrew](Homebrew.md).

```zsh
brew install pyenv
```

Configure **pyenv** in [Zsh](Zsh.md) and [Fish](Fish.md).

```zsh
# ~/.zshrc

# Python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

```shell
# ~/.config/fish/config.fish

if status is-interactive

    # pyenv
    set -gx PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin
    pyenv init - fish | source

end
```

Check for the latest version number.

```zsh
pyenv install --list
```

> [!note] 
> It is currently necessary to install `xz` (via [Homebrew](Homebrew.md)) so that `pyenv` can install `lzma`.

Install `xz` if it has not already been installed as a dependency for another package (e.g., [FFmpeg](FFmpeg.md)).

```shell
brew install xz
```

Install the latest version of **Python**.

```zsh
pyenv install 3.13.1
pyenv global 3.13.1
```

Update `pip` (when an update is available).

```zsh
pip install --upgrade pip
```

## Installing packages

Install packages using `pip`.

```zsh
pip install numpy scipy matplotlib plotly
```

## Updating packages

Use the `--upgrade` flag.

```zsh
pip install --upgrade numpy
```
