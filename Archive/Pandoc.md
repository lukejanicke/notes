# Pandoc

- [Pandoc](https://www.pandoc.org)

## Install

A macOS installer is available, but install **Pandoc** with [Homebrew](../Homebrew.md).

```zsh
brew install pandoc
```

## Examples

Convert a MarkDown document to a Word document.

```zsh
pandoc -f markDown -t docx Document.md -o Document.docx
```

Convert a Word document to a MarkDown document.

```zsh
pandoc -f docx -t markDown Document.docx -o Document.md
```

Batch convert Word documents to PDF documents.

```zsh
for doc in *.docx; do 
	pandoc "$doc" -s -o "${doc%.docx}.pdf"
done
```
