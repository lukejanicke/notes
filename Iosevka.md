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
git clone --depth=1 https://github.com/be5invis/Iosevka.git ~/iosevka
```

Run `npm install` in `~/iosevka`.

```shell
cd ~/iosevka
```

```shell
npm install
```

## Build

Copy `private-build-plans.sample.toml` to `private-build-plans.toml`.

```shell
cp private-build-plans.sample.toml private-build-plans.toml
```

Edit `private-build-plans.toml` with custom build plans.

Use [Iosevka Customizer](https://typeof.net/Iosevka/customizer) to generate build plans for `private-build-plans.toml`.

Refer to [Building Iosevka from Source](https://github.com/be5invis/Iosevka/blob/main/doc/custom-build.md) for further build plan options.

Run `npm run build -- contents::Iosevka` to build fonts.

```shell
npm run build -- ttf::Iosevka
```

Grab the font files from `~/iosevka/dist/`.

## Plans

| Font                  | Style                         | Nerd Fonts | Use                |
| --------------------- | ----------------------------- | ---------- | ------------------ |
| Iosevka               | Proportional                  | Propo      | Visual Studio Code |
| Iosevka Slab          | Proportional, Serif           |            |                    |
| Iosevka Terminal      | Monospace                     | Mono       |                    |
| Iosevka Terminal Slab | Monospace, Serif              |            |                    |
| Iosevka Fixed         | Monospace, No Ligation        | Mono       | Terminal, WezTerm  |
| Iosevka Fixed Slab    | Monospace, Serif, No Ligation |            |                    |
| Iosevka Aile          | Quasi-Proportional            |            |                    |
| Iosevka Etoile        | Quasi-Proportional, Serif     |            |                    |

`private-build-plans.toml` is not (yet) included in [dotfiles](https://github.com/lukejanicke/dotfiles).

```toml
#############
## Iosevka ## 
#############

[buildPlans.Iosevka]
family = "Iosevka"
serifs = "sans"
spacing = "normal"
noCvSs = false
exportGlyphNames = false

[buildPlans.Iosevka.ligations]
inherits = "dlig"

[buildPlans.Iosevka.widths.UltraCondensed]
shape = 416
menu = 1
css = "ultra-condensed"

[buildPlans.Iosevka.widths.ExtraCondensed]
shape = 456
menu = 2
css = "extra-condensed"

[buildPlans.Iosevka.widths.Condensed]
shape = 500
menu = 3
css = "condensed"

[buildPlans.Iosevka.widths.SemiCondensed]
shape = 548
menu = 4
css = "semi-condensed"

[buildPlans.Iosevka.widths.Normal]
shape = 600
menu = 5
css = "normal"

[buildPlans.Iosevka.widths.SemiExtended]
shape = 658
menu = 6
css = "semi-expanded"

[buildPlans.Iosevka.widths.Extended]
shape = 720
menu = 7
css = "expanded"

##################
## Iosevka Slab ## 
##################

[buildPlans.IosevkaSlab]
family = "Iosevka Slab"
serifs = "slab"
spacing = "normal"
noCvSs = false
exportGlyphNames = false

[buildPlans.IosevkaSlab.ligations]
inherits = "dlig"

[buildPlans.IosevkaSlab.widths.Normal]
shape = 600
menu = 5
css = "normal"

######################
## Iosevka Terminal ##
######################

[buildPlans.IosevkaTerminal]
family = "Iosevka Terminal"
serifs = "sans"
spacing = "term"
noCvSs = true
exportGlyphNames = false

[buildPlans.IosevkaTerminal.ligations]
inherits = "dlig"

[buildPlans.IosevkaTerminal.widths.Normal]
shape = 600
menu = 5
css = "normal"

###########################
## Iosevka Terminal Slab ##
###########################

[buildPlans.IosevkaTerminalSlab]
family = "Iosevka Terminal Slab"
serifs = "sans"
spacing = "term"
noCvSs = true
exportGlyphNames = false

[buildPlans.IosevkaTerminalSlab.ligations]
inherits = "dlig"

[buildPlans.IosevkaTerminalSlab.widths.Normal]
shape = 600
menu = 5
css = "normal"

###################
## Iosevka Fixed ##
###################

[buildPlans.IosevkaFixed]
family = "Iosevka Fixed"
serifs = "sans"
spacing = "fixed"
noCvSs = true
exportGlyphNames = false

[buildPlans.IosevkaFixed.ligations]
inherits = "dlig"

[buildPlans.IosevkaFixed.widths.Normal]
shape = 600
menu = 5
css = "normal"

########################
## Iosevka Fixed Slab ##
########################

[buildPlans.IosevkaFixedSlab]
family = "Iosevka Fixed Slab"
serifs = "sans"
spacing = "fixed"
noCvSs = true
exportGlyphNames = false

[buildPlans.IosevkaFixedSlab.ligations]
inherits = "dlig"

[buildPlans.IosevkaFixedSlab.widths.Normal]
shape = 600
menu = 5
css = "normal"

##################
## Iosevka Aile ##
##################

[buildPlans.Aile]
family = "Iosevka Aile"
serifs = "sans"
spacing = "quasi-proportional"
noCvSs = true
exportGlyphNames = false

[buildPlans.Aile.ligations]
inherits = "dlig"

[buildPlans.Aile.widths.Normal]
shape = 600
menu = 5
css = "normal"

####################
## Iosevka Etoile ##
####################

[buildPlans.Etoile]
family = "Iosevka Etoile"
serifs = "serif"
spacing = "quasi-proportional"
noCvSs = true
exportGlyphNames = false

[buildPlans.Etoile.ligations]
inherits = "dlig"

[buildPlans.Etoile.widths.Normal]
shape = 600
menu = 5
css = "normal"
```
