# Typst

- [Typst](https://typst.app/home/)
- [Tinymist](https://github.com/Myriad-Dreamin/tinymist) / [Documentation](https://myriad-dreamin.github.io/tinymist/)


> [!note] Typst and Tinymist Typst
> The **Tinymist Typst** extension for [Visual Studio Code](../Visual%20Studio%20Code.md) bundles the **Typst** compiler.

## Install

Install **Typst** with [Homebrew](../Homebrew.md).

```zsh
brew install typst
```

## Usage

Compile `file.typ` to `file.pdf`.

```zsh
typst compile file.typ
```

Watch `file.typ` and recompile on save.

```zsh
typst watch file.typ
```

## Visual Studio Code

Install the **Tinymist Typst** extension for [Visual Studio Code](../Visual%20Studio%20Code.md).

### Tinymist Typst settings

| Name                     | Setting    |
| ------------------------ | ---------- |
| Tinymist: Export PDF     | `onSave`   |
| Tinymist: Formatter Mode | `typstyle` |

Hide action controls on the editor panel by adding the following to `settings.json`.

```JSON
"[typst]": {
	"editor.codeLens": false
}
```
