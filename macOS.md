# macOS

- [ ] Add **1Password** to *AutoFill & Passwords*.
- [ ] Change *Language & Region / Preferred Languages* to **English (Australia)** when Apple Intelligence becomes available with Australian English language settings. Update settings for *Apple Intelligence & Siri*.
- [ ] There is a bug in Sequoia with Preview and Continuous Scroll and Zoom to Fit.

## Rosetta

Install [Rosetta 2](https://support.apple.com/en-au/102527) when needed (e.g., for [[Docker]].

```shell
softwareupdate --install-rosetta
```

## System settings

*Leave default settings except for the following.*

- iCloud
	- Drive / Desktop & Documents Folders **ON**
	- Advanced Data Protection **ON**
- General
	- Software Update
		- Automatic Updates
			- Download new Updates when available **ON**
			- Install macOS Updates **ON**
			- Install application updates from the App Store **ON**
			- Install Security Responses and system files **ON**
	- AutoFill & Passwords
		- AutoFill Passwords and Passkeys **OFF**
		- AutoFill from Passwords (new Apple app) **OFF**
	- Language & Region / Preferred Languages: **English (Australia) — Primary**
- Appearance
	- Show scroll bars ... **When scrolling**
- Apple Intelligence & Siri
	- Keyboard shortcut **Press either command key twice**
	- *Enable ChatGPT extension and sign in*
- Control Centre
	- Clock Options…
		- Show date **Never**
		- Show the day of the week **OFF**
		- Show AM/PM **OFF**
	- Spotlight **Don’t Show in Menu Bar**
- Desktop & Dock
	- Double-click a window's title bar to **Fill**
	- Minimise windows into application icon **ON**
	- Show suggested and recent apps in Dock **OFF**
	- Automatically rearrange Spaces based on most recent use **OFF**
	- Hot Corners… / Remove all hot corners
- Displays
	- Color profile **sRGB IEC61966-2.1**
	- Night Shift…
		- Schedule **Sunset to Sunrise**
		- Color temperature **Less Warm**
- Screen Saver & Wallpaper
	- **Sequoia** or **Sequoia Sunrise**
	- Show as wallpaper **ON**
	- Show on all Spaces **ON**
- Screen Time / Share across devices **ON**
- Lock Screen / Start Screen Saver when inactive **For 5 minutes**
- Touch ID & Password / Rename fingerprints as ‘Right Index’ and such
- Keyboard
	- Turn keyboard backlight off after inactivity **After 1 minute**
	- Press <kbd>fn</kbd> key to **Do Nothing** (set to **Change Input Source** if using other keyboards)
	- Keyboard Shortcuts… *Turn off all except…*
		- Mission Control
			- Mission Control <kbd>control</kbd> <kbd>up</kbd>
			- Application Windows <kbd>control</kbd> <kbd>down</kbd>
			- Mission Control
				- Move left a space <kbd>control</kbd> <kbd>left</kbd>
				- Move right a space <kbd>control</kbd> <kbd>right</kbd>
				- Switch to Desktop 1 <kbd>control</kbd> <kbd>1</kbd>
			- Screenshots
				- Save picture of screen as file <kbd>shift</kbd> <kbd>command</kbd> <kbd>3</kbd>
				- Save picture of selected area as file <kbd>shift</kbd> <kbd>command</kbd> <kbd>4</kbd>
				- Screenshot and recording options <kbd>shift</kbd> <kbd>command</kbd> <kbd>5</kbd>
			- Spotlight
				- Show Spotlight search <kbd>command</kbd> <kbd>space</kbd>
	- Input Sources / Edit… / **Australian**, **Pinyin - Simplified**
	- Dictation **ON**
	- Languages / Edit… / Select languages… **Australia**, **Chinese (Mandarin)**, **United States**
- Trackpad
	- Point & Click / Tap to click **ON**
	- More Gestures
		- Mission Control **Swipe Up with Four Fingers**
		- App Exposé **Swipe Down with Four Fingers**

## Create a bootable installer for macOS

[How to create a bootable installer for macOS](https://sUpport.apple.com/en-us/HT201372)

Format USB flash drive `Install macOS Sequoia` as Mac OS Extended (Journaled).

Look for available installers.

```shell
softwareupdate --list-full-installers
```

Download the latest installer.

```shell
softwareupdate —-fetch-full-installer
```

Or a specific version.

```shell
softwareupdate —-fetch-full-installer --full-installer-version 15.2
```

Install the installer.

```zsh
sudo /Applications/Install\ macOS\ Sequoia.app/Contents/Resources/createinstallmedia --volume /Volumes/Install\ macOS\ Sequoia
```
