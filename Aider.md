# aider

- [Aider](https://aider.chat) / [GitHub](https://github.com/Aider-AI/aider)

## Install

Install **aider** with [uv](uv.md) and Python 3.12.

```shell
uv tool install --force --python python3.12 aider-chat@latest
```

**aider** needs `~/.local/bin` in PATH. (Satisfied by [Zsh](Zsh.md) and [Fish](Fish.md) configurations for [uv](uv.md).)

## Usage

Save OpenRouter API key in [1Password](1Password.md) and use [1Password CLI](1Password%20CLI.md) (`op` command) to retrieve it.

```shell
aider --api-key openrouter=$(op read "op://Private/OpenRouter/api-key-aider") --model openrouter/deepseek/deepseek-chat
```

List available OpenRouter models.

```shell
aider --list-models openrouter
```

