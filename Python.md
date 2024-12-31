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

Install **pyenv** with [[Homebrew]].

```zsh
brew install pyenv
```

Configure **pyenv** in [[Zsh]] and [[Fish]].

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

    # Python
    set -x PYENV_ROOT $HOME/.pyenv
    test -d $PYENV_ROOT/bin; and set -x PATH $PYENV_ROOT/bin $PATH
    pyenv init | source

    # Ensure pyenv shims are in the PATH for pip and pip3
    set -x PATH $PYENV_ROOT/shims $PATH

end
```

Check for the latest version number.

```zsh
pyenv install --list
```

> [!note] 
> It is currently necessary to install `xz` (via [[Homebrew]]) so that `pyenv` can install `lzma`.

Install `xz` if it has not already been installed as a dependency for another package (e.g., [[FFmpeg]]).

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
