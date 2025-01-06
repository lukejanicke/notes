# Nerd Fonts

- [Nerd Fonts](https://www.nerdfonts.com/)
- [Nerd Fonts Patcher (GitHub)](https://github.com/ryanoasis/nerd-fonts#font-patcher)

## Setup

Install [Docker](Docker.md).

Create a working directory with a `fonts` subdirectory.

```shell
mkdir -p ~/.nerdfonts/fonts
```

Copy fonts to be patched into `~/.nerdfonts/fonts`.

Run [Docker](Docker.md) from the working directory.

```shell
docker run -it --name font-patcher -v "$(pwd):/work" -w /work ubuntu:latest /bin/bash
```

Update `apt-get`.

```shell
apt-get update
```

Install necessary packages.

```shell
apt-get install -y fontforge python3 python3-pip wget unzip git python3-fontforge
```

Get the font patcher from GitHub.

```shell
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
```

```shell
unzip FontPatcher.zip
```

Make the font patcher executable.

```shell
chmod +x font-patcher
```

Update the font patcher to use Python 3.

```shell
sed -i '1s/python/python3/' font-patcher
```

Exit the [Docker](Docker.md) container.

```shell
exit
```

Use the container again at any time.

```shell
docker start -ai font-patcher
```

## Patching

Run the font patcher for each font file in `./fonts`.

```shell
for file in ./fonts/*.ttf; do ./font-patcher -c "$file"; done
```

Patch *Mono* variants.

```shell
for file in ./fonts/*.ttf; do ./font-patcher -c -s "$file"; done
```

Patch *Propo* variants.

```shell
for file in ./fonts/*.ttf; do ./font-patcher -c --variable-width-glyphs "$file"; done
```

## Symbols Nerd Font

Get  `Symbols Custom.sfd` from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/.nerdfonts/fonts https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.nerdfonts/Symbols\ Custom.sfd
```

Patch **Symbols Nerd Font**.

```shell
./font-patcher -c --ext ttf fonts/Symbols\ Custom.sfd
```

Patch **Symbols Nerd Font Mono**.

```shell
./font-patcher -c -s --ext ttf fonts/Symbols\ Custom.sfd
```

Make sure the actual **Symbols Nerd Font** is renamed or moved to a safe location.

Patch  **Symbols Nerd Font Propo** (manually appending **Propo** to the patched file).

```shell
./font-patcher -c --variable-width-glyphs --ext ttf fonts/Symbols\ Custom.sfd
```

> [!bug] Symbol Nerd Font Propo
> `--variable-width-glyphs` builds a **Propo** font but names it **Symbols Nerd Font**, which conflicts with the real **Symbols Nerd Font**. See [[#Symbols Nerd Font Propo]] for renaming the font using `fonttools`.

# Symbols Nerd Font Propo

Install `fonttools` with [pip](Python.md).

```shell
pip install fonttools
```

Decompile **Symbols Nerd Font Propo.ttf** to XML.

```shell
ttx SymbolsCustom\ Nerd\ Font\ Propo\ Regular.ttf
```

Edit **Symbols Nerd Font Propo.ttx**.

```shell
code SymbolsCustom\ Nerd\ Font\ Propo\ Regular.ttx
```

Replace six instances of `SymbolsCustom Nerd Font` with `SymbolsCustom Nerd Font Propo`.

Replace two instances of `SymbolsCustomNF` with `SymbolsCustomNFP`.

Recompile **Symbols Nerd Font Propo.ttf** (delete or rename the original).

```shell
ttx SymbolsCustom\ Nerd\ Font\ Propo\ Regular.ttx
```
