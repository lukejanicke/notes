
# Nerd Fonts

- [Nerd Fonts](https://www.nerdfonts.com/)
- [Nerd Fonts Patcher (GitHub)](https://github.com/ryanoasis/nerd-fonts#font-patcher)

## Setup

Install [[Docker]].

Create a working directory with a `fonts` subdirectory.

```shell
mkdir -p ~/.nerdfonts/fonts
```

Copy fonts to be patched into `~/.nerdfonts/fonts`.

Run [[Docker]] from the working directory.

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

## Patching

Run the font patcher for each font file in `./fonts`.

```shell
for file in ./fonts/*.ttf; do ./font-patcher -c "$file"; done
```

Patch *Mono* and *Propo* variants.

```shell
for file in ./fonts/*.ttf; do ./font-patcher -c -s "$file"; done
```

```shell
for file in ./fonts/*.ttf; do ./font-patcher -c --variable-width-glyphs "$file"; done
```

## Symbols Nerd Font

Download `NerdFontsSymbolsNerdFontBlank.sfd` for patching **Symbols Nerd Font**.

```shell
wget -P fonts https://raw.githubusercontent.com/ryanoasis/nerd-fonts/refs/heads/master/src/unpatched-fonts/NerdFontsSymbolsOnly/NerdFontsSymbolsNerdFontBlank.sfd
```

Patch **Symbols Nerd Font**.

```shell
./font-patcher -c --ext ttf fonts/NerdFontsSymbolsNerdFontBlank.sfd
```

Patch **Symbols Nerd Font Mono** and  **Symbols Nerd Font Propo**.

```shell
./font-patcher -c -s --ext ttf fonts/NerdFontsSymbolsNerdFontBlank.sfd
```

```shell
./font-patcher -c --variable-width-glyphs --ext ttf fonts/NerdFontsSymbolsNerdFontBlank.sfd
```

> [!bug] Symbol Nerd Font Propo
> `--variable-width-glyphs` builds a **Propo** font but names it **Symbols Nerd Font**, which conflicts with the real **Symbols Nerd Font**. See [[#Symbols Nerd Font Propo]] for renaming the font using `fonttools`.

Exit the [[Docker]] container.

```shell
exit
```

Use the container again at any time.

```shell
docker start -ai font-patcher
```

# Symbols Nerd Font Propo

Install `fonttools` with [[Python|pip]].

```shell
pip install fonttools
```

```shell
cd Documents/Fonts/Symbols\ Nerd\ Font/
```

Decompile **Symbols Nerd Font Propo.ttf** to XML.

```shell
ttx Symbols\ Nerd\ Font\ Propo.ttf
```

Edit **Symbols Nerd Font Propo.ttx**.

```shell
code Symbols\ Nerd\ Font\ Propo.ttx
```

Replace six instances of `Symbols Nerd Font` with `Symbold Nerd Font Propo`.

Replace two instances of `SymbolsNF` with `SymbolsNFP`.

Recompile **Symbols Nerd Font Propo.ttf**.

```shell
ttx Symbols Nerd Font Propo.ttf
```
