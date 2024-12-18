# Terminal

- [Terminal User Guide](https://support.apple.com/en-au/guide/terminal/welcome/mac) / [Keyboard shortcuts](https://support.apple.com/en-au/guide/terminal/trmlshtcts/mac)
- [Catppuccin (GitHub)](https://github.com/catppuccin/Terminal.app)

See [[Terminal Shortcuts]] for **Terminal** and other shell keyboard shortcuts.

See [[Terminal Commands]] for **Terminal** and other shell commands.

> [!note] [[Fish]] sets **Terminal** window and tab bar titles
> [[Fish]] sets **Terminal** window and tab bar titles to an abbreviated current working directory, and prepends the shell name if the default shell is left. For example, `zsh ~/D/Python` for `zsh ~/Documents/Python`. Changing directory when not in [[Fish]] shell will not update window and tab bars. I would prefer that **Terminal** settings take precedence.

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

Make sure **FiraCode Nerd Font Mono** is installed.

Remove default profiles.

Import modified **Catppuccin** profiles.

For new profiles, change the following settings.

- Text
	- Font: **PT Mono 13** or any preferred alternative
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
