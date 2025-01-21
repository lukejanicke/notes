# grok vi

- [ ] Review and improve.

> *Your problem with Vim is that you don't grok vi.*—Jim Dennis, [Stack Overflow]()

## Motion

| Command   | Explanation                                                   |
| :-------- | :------------------------------------------------------------ |
| `h`       | Move cursor left                                              |
| `j`       | Move cursor down                                              |
| `k`       | Move cursor up                                                |
| `l`       | Move cursor right                                             |
| `w`       | Move to the next word                                         |
| `W`       | Move to the next space-separated word                         |
| `b`       | Move to the beginning of the current word                     |
| `e`       | Move to the end of the current word                           |
| `B`       | Move to the beginning of the space-separated word             |
| `E`       | Move to the end of the space-separated word                   |
| `gg`      | Jump to the beginning of the file                             |
| `G`       | Jump to the end of the file                                   |
| `{`       | Move to the beginning of the paragraph                        |
| `}`       | Move to the end of the paragraph                              |
| `'.`      | Jump back to the last edited line                             |
| `g;`      | Jump back to the last edited position                         |
| `%`       | Jump to the matching bracket (e.g., `{`, `(`, `[`)            |
| `f<char>` | Move to the next instance of `<char>` on the current line     |
| `F<char>` | Move to the previous instance of `<char>` on the current line |
| `;`       | Repeat the last `f` or `F` command.                           |
| `*`       | Search forward for the word under the cursor.                 |
| `#`       | Search backward for the word under the cursor.                |

## Copying, cutting, and pasting

| Command   | Explanation                                                                  |
| :-------- | :--------------------------------------------------------------------------- |
| `yy`      | Copy (yank) the current line.                                                 |
| `[number]yy`   | Copy (yank) the specified number of lines.                                     |
| `yW`       | Yank from cursor to the end of the current/next big word.                   |
| `y'a`      | Yank from the cursor to the line containing the mark '`a`'.                   |
| `dd`      | Delete (cut) the current line.                                               |
| `[number]dd` | Delete (cut) the specified number of lines.                                   |
| `d<movement>` | Delete (cut) text based on the movement command (e.g., `dw`, `d}`, etc.) |
| `y<movement>` | Yank (copy) text based on the movement command. |
| `d`\`a    | Cut from the current location to the mark 'a'                               |
| `y`\`a    | Copy from the current location to the mark 'a'                              |
|`"{register}d<movement>` | Delete text into the specified register (e.g. `"add`)
|`"{register}y<movement>` | Yank text into the specified register (e.g. `"by/foo`)
|`"{register}p`    | Paste text from the specified register after the cursor (e.g. `"ap`)
|`"{register}P`    | Paste text from the specified register before the cursor (e.g. `"bP`)
|`p`      | Paste the content of the unnamed register after the cursor.                   |
|`P`       | Paste the content of the unnamed register before the cursor.                |

## Marks and registers

| Command  | Explanation                                               |
| :------- | :-------------------------------------------------------- |
| `ma`     | Set the mark 'a' to the current cursor location.          |
| `mz`     | Set the mark 'z' to the current cursor location.          |
| `'a`     | Move to the beginning of the line containing mark 'a'.   |
| `` `a``     | Move to the exact location of mark 'a'.                 |
| `"`      | Prefix to use a named register.                          |

## Text manipulation

| Command   | Explanation                                                    |
| :-------- | :------------------------------------------------------------- |
| `J`       | Join the current line with the next line.                       |
| `[number]J` | Join the current line with the next `number` of lines.         |
| `r<char>` | Replace the character under the cursor with `<char>`.           |
| `~`       | Change the case of the character under the cursor.           |
| `.`       | Repeat the last text-changing command                          |
| `I`       | Insert at the beginning of the current line.                  |
| `A`       | Append to the end of the current line.                        |
| `o`       | Open a new line below the current line and enter insert mode. |
| `O`       | Open a new line above the current line and enter insert mode. |
| `C`       | Change the remaining part of the line from the cursor        |
|`v`       | Enter visual mode to select text with movements.               |
|`V`       | Enter visual line mode to select lines.                         |
|`Ctrl-v` | Enter visual block mode to select a rectangular block of text. |
| `xp`    | Swap the character under the cursor with the next character.|
| `==` | Fix line indenting. |
| `>` | Indent block (in visual mode) |
| `<` | Unindent block (in visual mode) |

## Search and replace

| Command             | Explanation                                                                |
| :------------------ | :------------------------------------------------------------------------- |
| `/pattern`          | Search forward for `pattern`.                                               |
| `?pattern`          | Search backward for `pattern`.                                              |
| `n`               | Jump to the next match of the search pattern.   |
| `N`               | Jump to the previous match of the search pattern.   |
| `:s/foo/bar/g`      | Substitute all occurrences of "foo" with "bar" on the current line.          |
| `:%s/foo/bar/g`    | Substitute all occurrences of "foo" with "bar" in the entire file.        |
| `:[range]s/foo/bar/g` | Substitute all occurrences of "foo" with "bar" within the specified range. |
| `d/foo`    | Cut from the current line to the next line containing "foo." |
| `y?bar`    | Copy from the current line to the most recent (previous) line containing "bar." |

## ex commands

| Command           | Explanation                                                                                       |
| :---------------- | :------------------------------------------------------------------------------------------------ |
| `:127,215 s/foo/bar` | Change the first occurrence of "foo" into "bar" on each line between 127 and 215.           |
| `:.,$j`           | From the current line to the last line, join them all into one line.                              |
| `:%`             | Synonym for `:1,$` (all lines).                                                                 |
| `:g/re/p`     | Globally print lines containing a regular expression.    |
|`:% g/foo/d`      | Delete any lines containing the string "foo."             |
|`:% v/bar/d`      | Delete any lines NOT containing the string "bar."            |
|`:% g/foo/m$`     | Move all lines containing "foo" to the end of the file.           |
|`:% g/^ /-1j`      | For every line starting with " ", go up one line and join them.                                     |
|`:% g/foo/s/bar/zzz/g` | For every line containing "foo", substitute all "bar" with "zzz".                  |
|`:'a,'bg/foo/j`      | Join any line containing "foo" to its subsequent line, if it lies between marks 'a' and 'b'.        |
|`:r foo`          | Insert the content of the file named "foo" at the current line.                                  |
|`:r! command`     | Insert the output of the shell command at the current line.                                       |
|`:! command`     | Filter selections of text through the shell command.                                  |
|`:so file`     | Execute commands from the specified file.                                        |

## Macros and other

| Command | Explanation                                                                                                 |
| :------ | :---------------------------------------------------------------------------------------------------------- |
| `q<register>`  | Start recording a macro into the specified register (e.g. `qa`).                     |
| `q`       | Stop recording a macro.                                                                                  |
| `@<register>` | Execute the macro stored in the specified register (e.g. `@a`).                             |
| `@@` | Execute the last used macro. |
|  `CTRL-A` | Increment the number under the cursor |
|  `CTRL-X` | Decrement the number under the cursor |

## Visual mode

| Command   | Explanation                                                                  |
| :-------- | :--------------------------------------------------------------------------- |
| `v%`      | Select to the next matching parenthesis.                                        |
| `vib`     | Select text inside parenthesis block.                                            |
| `vi"`     | Select text between double quotes.                                               |
| `vi'`     | Select text between single quotes.                                               |
| `viB`     | Select a curly brace block.                                                   |
| `vi{`     | Select a curly brace block.                                               |
| `ggVG`    | Select the entire file.                                               |

## Additional Tips

- **The "Zen" of vi:**  Thinking of vi as a language, with **verbs** (actions), **subjects** (the text to act on), and **objects** (registers, etc).
- **Marks:** Use **marks** to quickly jump to and manipulate specific locations in the text.
- **Registers:** Use **registers** to store text for copying, cutting, and pasting.
- **Combine commands**: Combine commands to create more complex operations (e.g. `ciw` to change inner word).
- **Macros**: Use **macros** to record and replay a series of commands to perform repetitive actions.
- **`CTRL-R`**: Use `CTRL-R` in insert or command mode with registers to paste contents of registers.

