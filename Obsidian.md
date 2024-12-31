# Obsidian

- [Obsidian](https://obsidian.md) / [Help](https://help.obsidian.md/Home) / [Docs](https://docs.obsidian.md/Home)

- [ ] Write a CSS snippet to remove borders from panes in all Obsidian themes.
- [ ] Add [Style Settings](https://github.com/mgmeyers/obsidian-style-settings) configuration options to `readable-line-width.css` CSS snippet.
- [ ] Write a CSS snippet to remove `line-through` from completed checklist items.

> [!bug] Conflicting shortcuts
> Obsidian confuses <kbd>fn</kbd> + <kbd>control</kbd> + <kbd>left</kbd> / <kbd>right</kbd> (the default [Mac window tiling shortcuts](https://support.apple.com/en-au/guide/mac-help/mchl9674d0b0/mac)) with <kbd>fn</kbd> + <kbd>left</kbd> / <kbd>right</kbd> (the [Windows keys on a Mac keyboard](https://support.apple.com/en-au/guide/mac-help/cpmh0152/mac) for <kbd>Home</kbd> / <kbd>End</kbd>). Forum post: [Obsidian confuses Mac window tiling shortcut for Windows Home/End shortcut](https://forum.obsidian.md/t/obsidian-confuses-mac-window-tiling-shortcut-for-windows-home-end-shortcut/91551).

## Settings

- General
	- Notify if startup takes longer than expected **ON**
- Editor
	- Show indentation guides **OFF**
- Appearance
	- Install **Catppuccin** theme
	- Interface font *leave default*
	- Text font **PT Sans** or any preferred alternative
	- Monospace font **PT Mono** or any preferred alternative
	- Show inline title **OFF**
	- Show tab title bar **OFF**
	- Show ribbon **OFF**
	- Native menus **OFF**
	- Install [[#CSS snippets]]
- Hotkeys
	- Edit [[#Hotkeys]]
- Core plugins
	- Slash commands **ON**
- Community plugins
	- **Turn on community plugins**
	- Install **Style Settings** and **Hider** plugins
	- Manually install **Quick Wrapper**
	- Create `<kbd>` quick tags with <kbd>command</kbd> <kbd>shift</kbd> <kbd>K</kbd> keyboard shortcut

## Hotkeys

| Hotkey                                               | Unassign                | Assign                          |
| ---------------------------------------------------- | ----------------------- | ------------------------------- |
| <kbd>command</kbd> <kbd>1</kbd> through <kbd>8</kbd> | Go to tab #1 through #8 | Set as heading 1 through 6      |
| <kbd>command</kbd> <kbd>/</kbd>                      | Toggle comment          | Toggle Live Preview/Source mode |
| <kbd>alt</kbd> <kbd>B</kbd>                          |                         | Toggle left sidebar             |
| <kbd>alt</kbd> <kbd>shift</kbd> <kbd>B</kbd>         |                         | Toggle right sidebar            |

## CSS snippets

Add snippets to `.obsidian/snippets` in a vault.

```css
/* .obsidian/snippets/borders.css
  Remove fine borders from Workspace panes and tabs. */
```

```css
/* .obsidian/snippets/checklists.css
  Remove line-through from checklists. */
```

```css
/* .obsidian/snippets/indentation.css
   Book style paragraph indentation.
   Designed to work with Minimal theme. */
[class="cm-line"]:not(:has(> br:only-child))+[class="cm-line"],
[class="cm-line"]:not(:has(> br:only-child))+[class="cm-active cm-line"],
[class="cm-active cm-line"]:not(:has(> br:only-child))+[class="cm-line"],
[class="cm-active cm-line"]:not(:has(> br:only-child))+[class="cm-active cm-line"] {
    text-indent: 2em;
}
```

```css
/* .obsidian/snippets/kbd.css
  Style for <kbd> elements. */

.markdown-source-view kbd,
.markdown-preview-view kbd {
  display: inline-block;
  color: var(--text-normal);
  padding: 0em 0.5em;
  border-radius: 0.2em;
  box-shadow: 0em 0.1em 0em var(--text-normal);
  border: 1px solid var(--text-normal);
  background-color: var(--background-primary);
}
```

```css
/* .obsidian/snippets/readable-line-width.css
  Increase the “readable” line width just a bit.
  Default is 700px. */

body {
  --file-line-width: 800px;
}
```

```css
/* .obsidian/snippets/table.css
  Prettier tables. */

body {
  /* --table-header-size: var(--text-normal); */
  --table-border-width: 0px;
  /* --table-header-weight: var(--font-bold); */
  /* --table-header-color: var(--text-normal); */
  --table-header-background: var(--background-primary);
  --table-header-background-hover: inherit;
  --table-background: var(--background-primary);
  --table-row-alt-background: var(--background-primary-alt);
  --table-row-background-hover: var(--background-primary);
  --table-row-alt-background-hover: var(--background-primary-alt);
  --table-column-alt-background: inherit;
  --table-add-button-background: var(--background-modifier-hover);
}
```
