# Vim Cheatsheet

**`:h`** (or **`:help`**) open help
**`:d <topic>`** open help for `<topic>`
**`:q`** (or **`:quit`**) quit
**`:q!`** quit without saving
**`qa!`** quit all without saving
**`:w`** (or **`:write`**) write/save file
**`:wq`** write and quit
**`K`** look up word under cursor

**`h`** move left
**`j`** move down
**`k`** move up
**`l`** move right

**`:<linenumber>`** jump to line number `<linenumber>`
**`/<search><CR>`** search for `<search>`
**`n`** jump to next search result

**`G`** move to end of file
**`gg`** move to start of file
**`<num>G`** move to line \<num>

**`e`** move to end of word
**`#e`** move to end of third word forward
**`w`** move to start of next word
**`b`** move to start of previous word
**`0`** move to start of line
**`$`** move to end of line

**`x`** delete character under cursor
**`3x`** delete three characters
**`de`** delete to end of word
**`dw`** delete to start of next word
**`d$`** delete to end of line
**`dd`** delete line (store in register)
**`3dd`** delete three lines
**`p`** put from register after/below
**`r<x>`** replace character under cursor with `x`

**`ce`** clear to end of word and insert
**`c3e`** clear three words and insert

**`u`** Undo commands
**`U`** Undo all latest changes on one line
**`<C-r>`** Redo commands

**`v`** enter visual mode
**`V`** enter visual line mode
**`<C-v>`** enter visual block mode

**`i`** insert before cursor
**`a`** insert after cursor
**`A`** insert at end of line
**`o`** insert new line below
**`O`** insert new line above

## `:Tutor`

### Lesson 0

**`<Esc>`** Normal mode
**`u`** undo latest change
**`<Enter>`** open linked section under cursor
**`K`** look up word under cursor
**`:q`** (or **`:quit`**) close a window (quit Neovim if last window)

### Lesson 1

**`h`** move left
**`j`** move down
**`k`** move up
**`l`** move right
**`:q!`** quit without saving
**`x`** delete character under cursor
**`i`** insert before cursor
**`A`** insert at end of line (append)
**`:wq`** write and quit

### Lesson 2

**`dw`** delete to start of next word
