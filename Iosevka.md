# Iosevka

- [Iosevka](https://typeof.net/Iosevka/) / [Customizer](https://typeof.net/Iosevka/customizer)
- [Iosevka (GitHub)](https://github.com/be5invis/Iosevka) / [Building Iosevka from Source](https://github.com/be5invis/Iosevka/blob/main/doc/custom-build.md)

> [!bug] Docker
> Cannot build from source via Docker on MacBook Air (M2 2022).

## Setup

Install [[Node]].

Install `ttfautohint` with [[Homebrew]].

```shell
brew install ttfautohint
```

Clone the **Iosevka** repository into `~/iosevka`.

```shell
git clone --depth=1 https://github.com/be5invis/Iosevka.git ~/.iosevka
```

Run `npm install` in `~/.iosevka`.

```shell
cd ~/.iosevka
```

```shell
npm install
```

## Build

Get `private-build-plans.toml` from [[Dotfiles]] with [[wget]].

```shell
wget -P ~/.iosevka https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.iosevka/private-build-plans.toml
```

Run `npm run build -- contents::Iosevka` to build fonts.

```shell
npm run build -- ttf-unhinted::Iosevka ttf-unhinted::IosevkaSlab ttf-unhinted::IosevkaTerminal ttf-unhinted::IosevkaTerminalSlab ttf-unhinted::IosevkaFixed ttf-unhinted::IosevkaFixedSlab ttf-unhinted::IosevkaAile ttf-unhinted::IosevkaEtoile
```

Grab the font files from `~/iosevka/dist/`.

## Fonts

| Font                  | Style                         | Nerd Font | Use                              |
| --------------------- | ----------------------------- | --------- | -------------------------------- |
| Iosevka               | Proportional                  | Propo     | Visual Studio Code (alternative) |
| Iosevka Slab          | Proportional, Serif           |           |                                  |
| Iosevka Terminal      | Monospace                     | Mono      |                                  |
| Iosevka Terminal Slab | Monospace, Serif              |           |                                  |
| Iosevka Fixed         | Monospace, No Ligation        | Mono      | Terminal, WezTerm                |
| Iosevka Fixed Slab    | Monospace, Serif, No Ligation |           |                                  |
| Iosevka Aile          | Quasi-Proportional            |           | Visual Studio Code (main)        |
| Iosevka Etoile        | Quasi-Proportional, Serif     |           |                                  |

## Builds

- Weights: 400 (normal) and 700 (bold)
- Widths: 600 (as default)
- Slopes: upright (regular) and italic
- Do not export cv## / ss## OpenType features
- Do not export glyph names for Kitty
- Discretionary ligatures
- Build `ttf-unhinted` only


```toml
#############
## Iosevka ## 
#############

[buildPlans.Iosevka]
family = "Iosevka"
spacing = "normal"
serifs = "sans"
noCvSs = true
exportGlyphNames = false

    [buildPlans.Iosevka.ligations]
    inherits = "dlig"

[buildPlans.Iosevka.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.Iosevka.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.Iosevka.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.Iosevka.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.Iosevka.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

##################
## Iosevka Slab ## 
##################

[buildPlans.IosevkaSlab]
family = "Iosevka Slab"
spacing = "normal"
serifs = "slab"
noCvSs = true
exportGlyphNames = false

    [buildPlans.IosevkaSlab.ligations]
    inherits = "dlig"

[buildPlans.IosevkaSlab.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaSlab.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaSlab.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaSlab.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaSlab.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

######################
## Iosevka Terminal ##
######################

[buildPlans.IosevkaTerminal]
family = "Iosevka Terminal"
spacing = "term"
serifs = "sans"
noCvSs = true
exportGlyphNames = false

    [buildPlans.IosevkaTerminal.ligations]
    inherits = "dlig"

[buildPlans.IosevkaTerminal.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaTerminal.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaTerminal.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaTerminal.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaTerminal.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

###########################
## Iosevka Terminal Slab ##
###########################

[buildPlans.IosevkaTerminalSlab]
family = "Iosevka Terminal Slab"
spacing = "term"
serifs = "slab"
noCvSs = true
exportGlyphNames = false

    [buildPlans.IosevkaTerminalSlab.ligations]
    inherits = "dlig"

[buildPlans.IosevkaTerminalSlab.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaTerminalSlab.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaTerminalSlab.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaTerminalSlab.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaTerminalSlab.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

###################
## Iosevka Fixed ##
###################

[buildPlans.IosevkaFixed]
family = "Iosevka Fixed"
spacing = "fixed"
serifs = "sans"
noCvSs = true
exportGlyphNames = false

    [buildPlans.IosevkaFixed.ligations]
    inherits = "dlig"

[buildPlans.IosevkaFixed.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaFixed.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaFixed.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaFixed.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaFixed.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

########################
## Iosevka Fixed Slab ##
########################

[buildPlans.IosevkaFixedSlab]
family = "Iosevka Fixed Slab"
spacing = "fixed"
serifs = "slab"
noCvSs = true
exportGlyphNames = false

    [buildPlans.IosevkaFixedSlab.ligations]
    inherits = "dlig"

[buildPlans.IosevkaFixedSlab.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaFixedSlab.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaFixedSlab.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaFixedSlab.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaFixedSlab.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

##################
## Iosevka Aile ##
##################

[buildPlans.IosevkaAile]
family = "Iosevka Aile"
spacing = "quasi-proportional"
serifs = "sans"
noCvSs = true
exportGlyphNames = false

    [buildPlans.IosevkaAile.ligations]
    inherits = "dlig"

[buildPlans.IosevkaAile.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaAile.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaAile.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaAile.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaAile.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"

####################
## Iosevka Etoile ##
####################

[buildPlans.IosevkaEtoile]
family = "Iosevka Etoile"
spacing = "quasi-proportional"
serifs = "slab"
noCvSs = true
exportGlyphNames = false

    [buildPlans.IosevkaEtoile.ligations]
    inherits = "dlig"

[buildPlans.IosevkaEtoile.weights.Regular]
shape = 400
menu = 400
css = 400

[buildPlans.IosevkaEtoile.weights.Bold]
shape = 700
menu = 700
css = 700

[buildPlans.IosevkaEtoile.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.IosevkaEtoile.slopes.Upright]
angle = 0
shape = "upright"
menu = "upright"
css = "normal"

[buildPlans.IosevkaEtoile.slopes.Italic]
angle = 9.4
shape = "italic"
menu = "italic"
css = "italic"
```
