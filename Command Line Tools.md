# Command Line Tools

[macOS](macOS.md) will alert you when you enter a command in [Terminal](Terminal.md) that requires **Command Line Tools**. You should cancel and install Command Line Tools manually first.

Install **Command Line Tools** manually with `xcode-select`.

```zsh
xcode-select --install
```

Verify the installation.

```zsh
xcode-select --print-path
```

This command displays the location of the currently active developer directory, which by default is `/Applications/Xcode.app/Contents/Developer` if **Xcode** is installed. However, the **Command Line Tools** installed with `xcode-select` are found in `/Library/Developer/CommandLineTools`. If `xcode-select -p` still identifies the **Xcode** path as the active developer directory, you can use `xcode-select -switch` to make the independently installed version active.

```zsh
sudo xcode-select --switch /Library/Developer/CommandLineTools/
```
