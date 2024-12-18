# Python

- [Python](https://www.python.org)
- [pyenv](https://github.com/pyenv/pyenv)

## Packages

- [x] IPython
- [x] nbconvert
- [ ] Matplotlib
- [ ] NumPy
- [ ] Plotly
- [ ] SciPy

## Installation

Install **`pyenv`** with [[Homebrew]].

```zsh
brew install pyenv
```

Copy the following to `~/.zshrc`.

```zsh
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
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

Update `pip`.

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
