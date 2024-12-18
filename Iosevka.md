# Iosevka

- [Iosevka](https://typeof.net/Iosevka/) / [Customizer](https://typeof.net/Iosevka/customizer)
- [Iosevka (GitHub)](https://github.com/be5invis/Iosevka) / [Building Iosevka from Source](https://github.com/be5invis/Iosevka/blob/main/doc/custom-build.md)

> [!bug] Docker
> Cannot build from source via Docker on MacBook Air (M2 2022).
˜
## Build

Install [[Node]].

Install `ttfautohint` with [[Homebrew]].

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

Copy `private-build-plans.sample.toml` to `private-build-plans.toml`.

```shell
cp private-build-plans.sample.toml private-build-plans.toml
```

Edit `private-build-plans.toml` with custom build configurations.

Use [Iosevka Customizer](https://typeof.net/Iosevka/customizer) to generate custom configurations for `private-build-plans.toml`.

Refer to [Building Iosevka from Source](https://github.com/be5invis/Iosevka/blob/main/doc/custom-build.md) for further configuration options.

Run `npm run build -- contents::Iosevka` to build fonts.

```shell
npm run build -- ttf::IosevkaCustomSans ttf::IosevkaCustomSansTerminal ttf::IosevkaCustomSansQuasiProportional
```

Grab the font files from `~/iosevka/dist/`.

## Plans

- Iosevka Custom Sans
- Iosevka Custom Sans Terminal
- Iosevka Custom Sans Quasi-Proportional

```toml
#########################
## Iosevka Custom Sans ## 
#########################

[buildPlans.IosevkaCustomSans]
family = "Iosevka Custom Sans"
serifs = "sans"
spacing = "normal"
noCvSs = true
exportGlyphNames = false

[buildPlans.IosevkaCustomSans.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaCustomSans.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaCustomSans.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaCustomSans.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaCustomSans.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

##################################
## Iosevka Custom Sans Terminal ##
##################################

[buildPlans.IosevkaCustomSansTerminal]
family = "Iosevka Custom Sans Terminal"
serifs = "sans"
spacing = "term"
noCvSs = true
exportGlyphNames = false

[buildPlans.IosevkaCustomSansTerminal.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaCustomSansTerminal.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaCustomSansTerminal.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaCustomSansTerminal.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaCustomSansTerminal.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

############################################
## Iosevka Custom Sans Quasi-Proportional ##
############################################

[buildPlans.IosevkaCustomSansQuasiProportional]
family = "Iosevka Custom Sans Quasi-Proportional"
serifs = "sans"
spacing = "quasi-proportional"
noCvSs = true
exportGlyphNames = false

[buildPlans.IosevkaCustomSansQuasiProportional.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaCustomSansQuasiProportional.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaCustomSansQuasiProportional.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaCustomSansQuasiProportional.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaCustomSansQuasiProportional.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"
```
