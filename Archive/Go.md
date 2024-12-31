# Go

- [Go](https://go.dev)

# Install

Install **Go** with [[Homebrew]].

```zsh
brew install go
```

Verify the installation.

```zsh
go version
```

Copy the following to `~/.zshenv`.

```zsh
export GOPATH="$HOME/go"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"
```
