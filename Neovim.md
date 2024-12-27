# Neovim

- [Neovim](https://neovim.io) / [Documentation](https://neovim.io/doc/) / [GitHub](https://github.com/neovim/neovim)
- [r/neovim Getting Started](https://www.reddit.com/r/neovim/wiki/index/getting-started/)
- [kickstart.nvim (GitHub)](https://github.com/nvim-lua/kickstart.nvim)

## Plugins

- [kickstart.nvim (GitHub)](https://github.com/nvim-lua/kickstart.nvim)

## Installation

Install [**`ripgrep`**](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation) with [[Homebrew]].

```shell
brew install ripgrep
```

Install [**`fd`**](https://github.com/sharkdp/fd?tab=readme-ov-file#installation) with [[Homebrew]].

```shell
brew install fd
```

Install [**Neovim**](https://neovim.io) with [[Homebrew]].

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

