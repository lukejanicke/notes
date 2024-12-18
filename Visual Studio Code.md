# Visual Studio Code

- [Visual Studio Code](https://code.visualstudio.com)
- [Visual Studio Code Keyboard Shortcuts for macOS (PDF)](Visual Studio Code Keyboard Shortcuts for macOS.pdf)

Note, **GitHub Copilot** and **Microsoft IntelliCode** work together.
## CLI

From the command palette, run *Shell Command: Install 'code' command in PATH*.

## Keyboard shortcuts

See [[Visual Studio Code Keyboard Shortcuts for macOS.pdf]] for more.

| Shortcut                                                          | Description                                    |
| ----------------------------------------------------------------- | ---------------------------------------------- |
| <kbd>command</kbd> <kbd>command</kbd> <kbd>P</kbd> or <kbd>F1</kbd> | Command palette…                               |
| <kbd>command</kbd> <kbd>K</kbd> <kbd>S</kbd>                      | Keyboard shortcuts                             |
| <kbd>command</kbd> <kbd>P</kbd>                                   | Quick open, go to file…                        |
| <kbd>shift</kbd> <kbd>command</kbd> <kbd>V</kbd>                  | Open markdown preview                          |
| <kbd>command</kbd> <kbd>K</kbd> <kbd>V</kbd>                      | Open markdown preview to the side              |
| <kbd>command</kbd> <kbd>K</kbd> <kbd>Z</kbd>                      | Zen mode                                       |
| <kbd>command</kbd> <kbd>K</kbd> <kbd>T</kbd>                      | Color theme                                    |
| <kbd>command</kbd> <kbd>B</kbd>                                   | Show side bar                                  |
| <kbd>command</kbd> <kbd>J</kbd>                                   | Show panel                                     |
| <kbd>shift</kbd> <kbd>command</kbd> <kbd>L</kbd>                  | Select all occurrences of selection/find match |

> [!warning] Command Palette
> **TickTick** sets <kbd>command</kbd> <kbd>shift</kbd> <kbd>P</kbd> to a global action hotkey. Just delete all global action hotkeys for **TickTick**.

## Settings

Log in with GitHub to sync settings.

```json
{
    "breadcrumbs.enabled": false,
    "editor.fontFamily": "\"FiraCode Nerd Font\", monospace",
    "editor.fontLigatures": true,
    "editor.fontSize": 13,
    "editor.lineNumbers": "off",
    "editor.minimap.enabled": false,
    "editor.wordWrap": "on",
    "explorer.confirmDelete": false,
    "explorer.confirmDragAndDrop": false,
    "jupyter.themeMatplotlibPlots": true,
    "latex-workshop.latex.recipe.default": "xelatex",
    "latex-workshop.latex.recipes": [
        {
            "name": "xelatex",
            "tools": [
                "latexmk"
            ]
        }
    ],
    "latex-workshop.latex.tools": [
        {
            "args": [
                "-xelatex",
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ],
            "command": "latexmk",
            "name": "latexmk"
        }
    ],
    "markdown.preview.breaks": true,
    "markdown.preview.fontFamily": "\"Fira Sans\", sans-serif",
    "terminal.integrated.fontSize": 13,
    "window.autoDetectColorScheme": true,
    "window.systemColorTheme": "auto",
    "workbench.colorTheme": "Catppuccin Mocha",
    "workbench.iconTheme": "catppuccin-latte",
    "workbench.preferredDarkColorTheme": "Catppuccin Mocha",
    "workbench.preferredLightColorTheme": "Catppuccin Latte",
    "workbench.startupEditor": "none"
}
```
