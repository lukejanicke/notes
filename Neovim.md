# Neovim

- [Neovim](https://neovim.io) / [Documentation](https://neovim.io/doc/) / [GitHub](https://github.com/neovim/neovim)
- [r/neovim Getting Started](https://www.reddit.com/r/neovim/wiki/index/getting-started/)

## Plugins

- [kickstart.nvim (GitHub)](https://github.com/nvim-lua/kickstart.nvim)

## Install

Install [ripgrep](ripgrep.md) and [fd](fd.md) with [Homebrew](Homebrew.md).

Install [**Neovim**](https://neovim.io) with [Homebrew](Homebrew.md).

```zsh
brew install neovim
```

Start **Neovim**.

```shell
nvim
```

## [Advent of Neovim](https://www.youtube.com/playlist?list=PLep05UYkc6wTyBe7kPjQFWVXTlhKeQejM)

Create `./config/neovim/init.lua`.

```shell
mkdir -p ./config/neovim
touch ./config/neovim/init.lua
```

Source `init.lua` in **Neovim**.

```vim
:source %
```
