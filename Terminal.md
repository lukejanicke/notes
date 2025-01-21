# Terminal

- [ ] Review and tidy/improve [Shortcuts](#Shortcuts) and [Commands](#Commands).

- [Terminal User Guide](https://support.apple.com/en-au/guide/terminal/welcome/mac) / [Keyboard shortcuts](https://support.apple.com/en-au/guide/terminal/trmlshtcts/mac)
- [Catppuccin (GitHub)](https://github.com/catppuccin/Terminal.app)

## Shortcuts

| Shortcut                                         | Action                                                          |
| ------------------------------------------------ | --------------------------------------------------------------- |
| <kbd>control</kbd> <kbd>A</kbd> / <kbd>E</kbd>   | Move cursor to beginning/end of line.                           |
| <kbd>option</kbd> <kbd>B</kbd> / <kbd>F</kbd>    | Move cursor back/forward one word.                              |
| <kbd>control</kbd> <kbd>X</kbd> <kbd>X</kbd>     | Jump between current and saved cursor position.                 |
| <kbd>control</kbd> <kbd>U</kbd>                  | Delete the current line.                                        |
| <kbd>control</kbd> <kbd>D</kbd>                  | Delete character under cursor (or exit shell if line is empty). |
| <kbd>control</kbd> <kbd>K</kbd>                  | Delete from cursor to end of line.                              |
| <kbd>control</kbd> <kbd>W</kbd>                  | Delete from cursor to beginning of word.                        |
| <kbd>option</kbd> <kbd>D</kbd>                   | Delete from cursor to end of word.                              |
| <kbd>control</kbd> <kbd>T</kbd>                  | Swap current and preceding characters (transpose).              |
| <kbd>control</kbd> <kbd>/</kbd>                  | Undo last editing action.                                       |
| <kbd>control</kbd> <kbd>L</kbd>                  | Clear screen (but not scrollback).                              |
| <kbd>control</kbd> <kbd>shift</kbd> <kbd>K</kbd> | Clear scrollback (but not screen).                              |
| *double click on word*                           | Select a whole word.                                            |
| *triple click on line*                           | Select a whole line.                                            |

| Shortcut                                           | Action                                |
| -------------------------------------------------- | ------------------------------------- |
| <kbd>option</kbd> + *mouse click*                  | Reposition the cursor.                |
| <kbd>command</kbd> <kbd>L</kbd>                    | Clear to previous mark/command.       |
| <kbd>command</kbd> <kbd>K</kbd>                    | Clear to start (of Terminal session). |
| <kbd>command</kbd> <kbd>option</kbd> <kbd>K</kbd>  | Clear the scrollback.                 |
| <kbd>command</kbd> <kbd>control</kbd> <kbd>K</kbd> | Clear the screen.                     |

## Commands

Open a file to edit. `-e` opens with TextEdit. Use `-a` to specify an app.

```shell
open -e ./file.txt
```

Open the current working directory in Finder.

```shell
open .
```

```shell
open -R /path/to/file # Open /path/to in Finder and highlight file
```
## Settings

Hide login information.

```zsh
touch .hushlogin
```

From the **View**, select **Hide Marks**.

In general settings, choose *Shells open with:* **Command (complete path):** `/bin/zsh`.

Import modified **Catppuccin** profiles and set **Catppuccin Mocha M** default.

The modified profiles set **IosevkaCustomFixed Nerd Font Mono**.

Remove default profiles.

For new profiles, change the following settings.

- Text
	- Font: **IosevkaCustomFixed Nerd Font Mono 13** or any preferred alternative
- Window
	- Title: **Terminal**
	- Select **Working directory or arguments**, **Path**
	- Select **Shell command name**
	- Deselect **Active process name**, **Arguments** 
	- Deselect **Dimensions**
	- Window Size, Columns: **90**, Rows: **30**
	- Deselect **Restore text when reopening windows**
- Tab
	- Select **Working directory or document**, **Path**
	- Deselect **Active process name** and **Arguments**
- Keyboard
	- Select **Use Option as Meta key**
- Advanced
	- Select **Set locale environment variables on startup** (*Required for `en_AU.UTF-8` locale.*)
