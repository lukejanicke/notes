# tldr

- [ ] Move commands to [[Terminal Commands and Shortcuts]].

- [tldr (GitHub)](https://github.com/tldr-pages/tldr)
- [tlrc (GitHub)](https://github.com/tldr-pages/tlrc)

## Install

Install the official **tldr** Rust client with [Homebrew](Homebrew.md).

```shell
brew install tlrc
```

## Commands

| Command                                 | Action                                              |
| --------------------------------------- | --------------------------------------------------- |
| `tldr command`                          | Print the `tldr` page for a specific command.       |
| `tldr command subcommand`               | Print the `tldr` page for a specific subcommand.    |
| `tldr --update`                         | Update the local cache of tldr pages.               |
| `tldr --list`                           | List all pages for the current platform and common. |
| `tldr --list \| grep command \| column` | List all available subcommand pages for a command.  |
| `tldr --update`                         | Update the local cache of tldr pages.               |
