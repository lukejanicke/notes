# Open WebUI

- [Open WebUI](https://openwebui.com) / [GitHub](https://github.com/open-webui/open-webui)
- [http://localhost:8080](http://localhost:8080)

## Setup

Use `pyenv`to install a version of [Python](Python.md) that is compatible with **Open WebUI**.

```shell
pyenv install 3.11.11
pyenv global 3.11.11
```

Create a [Python](Python.md) virtual environment at `~/open-webui` with `venv`.

```shell
python -m venv ~/open-webui
```

Activate the virtual environment.

```shell
source ~/open-webui/bin/activate.fish
```

Install **Open WebUI** with [pip](Python.md).

```shell
pip install open-webui
```

## Updating

Activate the virtual environment.

```shell
source ~/open-webui/bin/activate.fish
```

Update **Open WebUI** with [pip](Python.md).


## Running

Start a `screen` session.

```shell
screen -S openwebui
```

Activate the virtual environment (for the screen session).

```shell
source ~/open-webui/bin/activate.fish
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

Create a web app named “Open WebUI” at address [http://localhost:8080](http://localhost:8080)

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

## Ollama