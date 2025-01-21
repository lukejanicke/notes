# macOS

- [Mac keyboard shortcuts](https://support.apple.com/en-au/102650)

## Rosetta

Install [Rosetta 2](https://support.apple.com/en-au/102527) when needed (e.g., for [Docker](Docker.md)).

```shell
softwareupdate --install-rosetta
```

## System settings

*Leave default settings except for the following.*

*Some settings below are default but are important enough to be documented here.* 

- iCloud
	- [x] Drive / Desktop & Documents Folders **ON**
	- [x] Advanced Data Protection **ON**
- General
	- Software Update
		- Automatic Updates
			- [x] Download new Updates when available **ON**
			- [x] Install macOS Updates **ON**
			- [x] Install application updates from the App Store **ON**
			- [x] Install Security Responses and system files **ON**
	- AutoFill & Passwords
		- [x] AutoFill Passwords and Passkeys **OFF**
		- [x] AutoFill from Passwords (new Apple app) **OFF**
	- [x] Language & Region / Preferred Languages: **English (Australia) — Primary**
- Accessibility / Pointer Control / Trackpad Options…
	- [x] Use trackpad for dragging **ON**
	- [x] Dragging style **Without drag lock**
- Appearance
	- [x] Show scroll bars ... **When scrolling**
- Apple Intelligence & Siri
	- [x] Keyboard shortcut **Press either command key twice**
	- [ ] *Enable ChatGPT extension and sign in*
- Control Centre
	- Clock Options…
		- [x] Show date **Never**
		- [x] Show the day of the week **OFF**
		- [x] Show AM/PM **OFF**
	- [x] Spotlight **Don’t show in menu bar**
	- [x] Siri **Don’t show in menu bar**
- Desktop & Dock
	- [x] Double-click a window's title bar to **Fill**
	- [x] Minimise windows into application icon **ON**
	- [x] Show suggested and recent apps in Dock **OFF**
	- [x] Automatically rearrange Spaces based on most recent use **OFF**
	- [x] Hot Corners… / *Remove all hot corners*
- Displays
	- [x] Color profile **sRGB IEC61966-2.1**
	- Night Shift…
		- [x] Schedule **Sunset to sunrise**
		- [x] Colour temperature **Less warm**
- Screen Saver & Wallpaper
	- [x] **Sequoia** or **Sequoia Sunrise**
	- [x] Show as wallpaper **ON**
	- [x] Show on all Spaces **ON**
- Screen Time
	- [x] Share across devices **ON**
- Lock Screen
	- [x] Start Screen Saver when inactive **For 5 minutes**
- Touch ID & Password
	- [x] Rename fingerprints as “Right Index” and such
- Keyboard
	- [x] Turn keyboard backlight off after inactivity **After 5 minutes**
	- [x] Press <kbd>fn</kbzd> key to **Do nothing** (set to **Change input source** if using other keyboards)
	- Keyboard Shortcuts… *Turn off all except…*
		- Mission Control
			- Mission Control
				- [x] Move left a space <kbd>control</kbd> <kbd>left</kbd>
				- [x] Move right a space <kbd>control</kbd> <kbd>right</kbd>
				- [x] Switch to Desktop 1 <kbd>control</kbd> <kbd>1</kbd>
			- Screenshots
				- [x] Save picture of screen as file <kbd>shift</kbd> <kbd>command</kbd> <kbd>3</kbd>
				- [x] Save picture of selected area as file <kbd>shift</kbd> <kbd>command</kbd> <kbd>4</kbd>
				- [x] Screenshot and recording options <kbd>shift</kbd> <kbd>command</kbd> <kbd>5</kbd>
			- Spotlight
				- [x] Show Spotlight search <kbd>command</kbd> <kbd>space</kbd>
	- Input Sources / Edit…
		- [x] Show input menu in menu bar **ON**
		- [x] Input sources: **Australian**, **Pinyin - Simplified**
	- [x] Dictation **ON**
	- [x] Languages / Edit… / Select languages… **Australia**, **Chinese (Mandarin)**
- Trackpad
	- More Gestures
		- [x] Mission Control **Swipe up with four fingers**
		- [x] App Exposé **Swipe down with four fingers**

## Create a bootable installer for macOS

[How to create a bootable installer for macOS](https://sUpport.apple.com/en-us/HT201372)

Format USB flash drive `Install macOS Sequoia` as Mac OS Extended (Journaled).

Look for available installers.

```shell
softwareupdate --list-full-installers
```

Download the latest installer.

```shell
softwareupdate --fetch-full-installer
```

Or a specific version.

```shell
softwareupdate --fetch-full-installer --full-installer-version 15.2
```

Install the installer.

```zsh
sudo /Applications/Install\ macOS\ Sequoia.app/Contents/Resources/createinstallmedia --volume /Volumes/Install\ macOS\ Sequoia
```
