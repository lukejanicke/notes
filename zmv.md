# zmv

- [Zsh](https://www.zsh.org) / [Documentation](https://zsh.sourceforge.io/Doc/Release/zsh_toc.html) / [14.8 Filename Generation (globbing)](https://zsh.sourceforge.io/Doc/Release/Expansion.html#Filename-Generation)
- [Perl-Compatible Regular Expressions (PCRE)](https://www.pcre.org)

**zmv** is a [Zsh](Zsh.md) function to move or rename files using pattern matching.

**zmv** is documented in the `man` page for `zshcontrib`.

```zsh
man zshcontrib
```

Press <kbd>/</kbd> and type `zmv` to search for and skip to the `zmv` section.

## Usage

Run `autoload zmv` to make the function available in commands.

```zsh
autoload zmv
```

To use extended glob patterns, also run `setopt EXTENDED_GLOB`.

```zsh
setopt EXTENDED_GLOB
```

Rename a single file.

```zsh
# Rename 'about.txt' to 'README.md'
zmv 'about.txt' 'README.md'
```

Batch rename files and folders in the current directory using [Zsh](Zsh.md) glob patterns.

```zsh
# Replace 'red' with 'blue' in all file and folder names
zmv '(*)red(*)' '$1blue$2'
```

Batch rename using [Zsh](Zsh.md) extended glob patterns.

```zsh
# Replace `red` in filenames (not folders) with `blue`, except in 'bored.txt'
zmv '(*)(#q)red(*)~bored.txt' '$1blue$2'
```

Check [Zsh](Zsh.md) glob pattern matches with `print`.

```
# List all files (not folders) with `red` in filename, except `bored.txt`.
print -l (*)(#q)red(*)~bored.txt
```

Perform a dry run with the `-n` flag.

```zsh
# Replace `red` in filenames (not folders) with `blue`, except in 'bored.txt'
zmv -n '(*)(#q)red(*)~bored.txt)' '$1blue$2'
```

Enable Perl-Compatible Regular Expressions (PCRE) with the `-w` flag.

```zsh
# Replace `red` in filenames (and folders) with `blue`, except in 'bored.txt'
zmv -w '(.*)red(.*)(?<!bored\.txt)' '$1blue$2'
```
