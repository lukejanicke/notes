# Node

- [Node.js](https://nodejs.org/en/)
- [Installing Node.js via package managers: nvm](https://nodejs.org/en/download/package-manager/all#nvm)
- [nvm-sh](https://github.com/nvm-sh) / [nvm](https://github.com/nvm-sh/nvm)

## Install

Install **nvm**.

```zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

Configure **nvm** in [Zsh](Zsh.md).

```zsh
# ~/.zshrc

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

Source and verify the installation.

```zsh
nvm -v
```

Install the latest version of Node.

```zsh
nvm install node
```

Verify the installation.

```zsh
node -v
```
