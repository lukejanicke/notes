# aria2

- [aria2](https://aria2.github.io)

## Installation

Install **aria2** with [Homebrew](Homebrew.md).

```zsh
brew install aria2
```

## Examples

Download from a local BitTorrent file.

```zsh
aria2c -T FILE
```

Download from a BitTorrent Magnet URI.

```zsh
aria2c "URI"
```

Download from URIs listed in a text file.

```zsh
aria2c -i FILE
```

Specify seeding time in minutes.

```zsh
aria2c --seed-time=100 "URI"
```
