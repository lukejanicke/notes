# Nerd Fonts

- [Nerd Fonts](https://www.nerdfonts.com/)
- [Nerd Fonts Patcher (GitHub)](https://github.com/ryanoasis/nerd-fonts#font-patcher)

## Patching fonts via Docker

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

Run the font patcher for each font file in `./fonts`.

```shell
for file in ./fonts/*.ttf; do ./font-patcher -c "$file"; done
```

> [!Warning] Variable Fonts
> Don’t patch variable fonts. It doesn’t work.

Patch *Mono* and *Propo* variants.

```shell
for file in ./fonts/*.ttf; do ./font-patcher -s -c "$file"; done
```

```shell
for file in ./fonts/*.ttf; do ./font-patcher --variable-width-glyphs -c "$file"; done
```

Exit the [[Docker]] container.

```shell
exit
```

Use the container again at any time.

```shell
docker start -ai font-patcher
```
