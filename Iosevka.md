# Iosevka

- [Iosevka](https://typeof.net/Iosevka/) / [Customizer](https://typeof.net/Iosevka/customizer)
- [Iosevka (GitHub)](https://github.com/be5invis/Iosevka) / [Building Iosevka from Source](https://github.com/be5invis/Iosevka/blob/main/doc/custom-build.md)

## Building Iosevka from Source

### Setup

Install [Node](Node.md).

Install `ttfautohint` with [Homebrew](Homebrew.md).

```shell
brew install ttfautohint
```

Clone the **Iosevka** repository into `~/iosevka`.

```shell
git clone --depth=1 https://github.com/be5invis/Iosevka.git ~/iosevka
```

Run `npm install` in `~/iosevka`.

```shell
cd ~/iosevka
```

```shell
npm install
```

### Build

Get `private-build-plans.toml` from [Dotfiles](Dotfiles.md) with [wget](wget.md).

```shell
wget -P ~/iosevka https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.iosevka/private-build-plans.toml
```

Build the fonts.

```shell
npm run build -- ttf-unhinted::IosevkaCustom ttf-unhinted::IosevkaCustomSlab ttf-unhinted::IosevkaCustomCurly ttf-unhinted::IosevkaCustomCurlySlab ttf-unhinted::IosevkaCustomTerminal ttf-unhinted::IosevkaCustomTerminalSlab ttf-unhinted::IosevkaCustomFixed ttf-unhinted::IosevkaCustomFixedSlab ttf-unhinted::IosevkaCustomAile ttf-unhinted::IosevkaCustomEtoile
```

Grab the font files from `~/iosevka/dist/`.

### Update

Update the local repository.

```shell
git fetch --depth 1
```

Rebuild the fonts (see above).