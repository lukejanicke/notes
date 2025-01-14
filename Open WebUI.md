# Open WebUI

- [Open WebUI](https://openwebui.com) / [Documentation](https://docs.openwebui.com) / [GitHub](https://github.com/open-webui/open-webui)
- [http://localhost:8080](http://localhost:8080)

## Setup

Use `pyenv` to install a version of [Python](Python.md) that is compatible with **Open WebUI**.

```shell
pyenv install 3.11.11
pyenv global 3.11.11
```

Create a [Python](Python.md) virtual environment at `~/.openwebui` with `venv`.

```shell
python -m venv ~/.openwebui
```

Activate the virtual environment.

```shell
source ~/.openwebui/bin/activate.fish
```

Install **Open WebUI** with [pip](Python.md).

```shell
pip install open-webui
```

## Updating

Activate the virtual environment.

```shell
source ~/.openwebui/bin/activate.fish
```

Update **Open WebUI** with [pip](Python.md).

```shell
pip install -U open-webui
```

## Running

Start a `screen` session.

```shell
screen -S openwebui
```

Activate the virtual environment (for the screen session).

```shell
source ~/.openwebui/bin/activate.fish
```

Start the **Open WebUI** server.

```shell
open-webui serve
```

Detach the session by pressing <kbd>control</kbd> <kbd>A</kbd> then <kbd>D</kbd>.

Access **Open WebUI** at [http://localhost:8080](http://localhost:8080).

Stop the server by killing the session.

```shell
screen -S openwebui -X quit
```

Alternatively, reattach the session and press <kbd>control</kbd> <kbd>C</kbd>.

```shell
screen -r openwebui
```

## Fish function and web app

Create a [Safari web app](https://support.apple.com/en-au/104996) named “Open WebUI” at address [http://localhost:8080](http://localhost:8080)

Get `openwebui.fish` from [Dotfiles](Dotfiles.md) with [wget](wget.md) and restart [Fish](Fish.md).

```shell
wget -P ~/.config/fish/functions https://raw.githubusercontent.com/lukejanicke/dotfiles/main/.config/fish/functions/openwebui.fish
```

Start **Open WebUI** with `openwebui`.

## Anthropic

- [Anthropic Console](https://console.anthropic.com/dashboard)

Log in to [openwebui.com](https://openwebui.com) and go to *Functions*.

Find the **Anthropic** function and click **Get**.

If necessary, add the localhost URL `http://localhost:8080`.

Click **Import to Open WebUI**.

When it opens on localhost, click **Save** and close the function.

Find Anthropic in the functions list and click *Valves* (the gear icon).

Paste an Anthropic API key, click **Save** and close.

## OpenRouter

-  [Open Router]()

Go to *Admin Panel* → *Settings* → *Connections*.

Under **OpenAI API**, click the + symbol.

For **API Base URL**, enter `https://openrouter.ai/api/v1`.

Enter an API key from OpenRouter and click **Save**.

## Deploy on AWS

Launch an Amazon Linux EC2 instance with >=16GB  and connect via SSH.

Install [uv](uv.md) using the standalone installer.

```shell
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Create a virtual environment with Python 3.11.

```shell
uv venv openwebui --python 3.11
```

Activate the virtual environment.

```shell
source openwebui/bin/activate
```

Install **Open WebUI**.

```shell
uv pip install open-webui
```

> [!ERROR] Attempts to start the server appear to have failed.
