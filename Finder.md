# Finder

## Keyboard shortcuts

| Shortcut                                          | Description    |
| ------------------------------------------------- | -------------- |
| <kbd>Command</kbd> <kbd>1</kbd>                   | View as icons  |
| <kbd>Command</kbd> <kbd>2</kbd>                   | View as list   |
| <kbd>Command</kbd> <kbd>Option</kbd> <kbd>S</kbd> | Toggle sidebar |

## Toggle hidden files and folders

<kbd>Command</kbd> <kbd>Shift</kbd> <kbd>.</kbd>

```
defaults write com.apple.finder AppleShowAllFiles -bool TRUE && killall Finder
defaults write com.apple.finder AppleShowAllFiles -bool FALSE && killall Finder
```

## Preferences

Press <kbd>Command</kbd> <kbd>,</kbd> to open Preferences.

- General
	- Show these items on the desktop **deselect all**
	- New Finder windows show **Documents**
	- Sync Desktop & Documents folders **ON**
	- Open folders in tabs instead of new windows **ON**
- Tags / Configure according to your needs and preferences. A convenient default set of tags are one for each colour available: Red, Orange, Yellow, Green, Blue, Purple, Grey.
- Sidebar
	- Favourites: **Recents**, **AirDrop**, **Applications**, **Downloads**, **Home (user)**
	- iCloud: **select all**
	- Locations: **select all**
	- Tags: **Recent Tags**
- Advanced
	- Show all filename extensions **ON**
	- Deselect all other options
	- Keep folders on top: **In windows when sorting by name**
	- When performing a search: **Search This Mac**

## Toolbar

Right click on the Toolbar and select **Customise Toolbar…**.

- **Back/Forward** (to left of folder name)
- **Search** (to right of folder name)
- Show **Icon Only**

## View

- Show Sidebar
- Hide Preview

## Sidebar

- iCloud
	- iCloud Drive
	- Desktop
	- Documents
	- Shared
- Favourites
	- AirDrop
	- Recent
	- user folder
	- Applications
	- Downloads
	- *Add other folders for convenience as needed*
- Locations
	- Luke’s MacBook Air
	- Macintosh HD

Collapse (hide) the tags group if you are not actively using them.

## View Options

In `~/Documents`, right click and select **Show View Options**.

- Always open in icon view **ON**
- Browse in icon view **ON**
- Group by **None**
- Sort by **Name**
- Icon size: **128×128**
- Grid spacing: **minimum**
- Text size: **13**
- Label position: **Bottom**
- Show item info **OFF**
- Show icon preview **ON**
- Background **Default**

Click **Use as Defaults**.

From the **File** menu, select **as List** or press <kbd>Command</kbd> <kbd>2</kbd>.

- Icon size: **larger option**
- Text size: **13**
- Show columns: **Date Modified**, **Size**
- Use relative dates **ON**
- Calculate all sizes **ON**
- Show icon preview **ON**

Click **Use as Defaults**.

From the **File** menu, select **as Columns** or press <kbd>Command</kbd> <kbd>3</kbd>.

- Show preview column **OFF**

From the **File** menu, select **as Gallery** or press <kbd>Command</kbd> <kbd>4</kbd>.

- Thumbnail size: **largest option**
- Show preview column **OFF**
- Show icon preview **ON**
- Show filename **OFF**

Click **Use as Defaults**.

From the **File** menu, select **as Icons** or press <kbd>Command</kbd> <kbd>1</kbd>.

To give a a folder these default dettings, right click and select **Show View Options**. Hold Down <kbd>Option</kbd> and see that **Use as Defaults** changes to **Restore to Defaults**. Click **Restore to Defaults**.

Go to Desktop, Downloads and Applications folders and apply these default settings.

## iCloud

> [!tip] On My Mac
> If you are using iCloud, make sure the **On My Mac** folder is empty. Avoid using it.
