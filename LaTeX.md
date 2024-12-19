# LaTeX

- [MacTeX](https://tug.org/mactex/)
- [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop) / [Snippets and shortcuts](https://github.com/James-Yu/LaTeX-Workshop/wiki/Snippets)

See [[LaTeX Cheat Sheet.pdf]] for common shortcuts.
## Local installation

Install **TeX Live** locally using one of the two official Mac packages—**MacTeX** or **BasicTeX**.

Have a ☕️.

Add the applicable `PATH` to `~/.zshenv`.

```zsh
# MacTeX
export PATH="/usr/local/texlive/2024/bin/universal-darwin:$PATH"

# BasicTeX
export PATH="/usr/local/texlive/2024basic/bin/universal-darwin:$PATH"
```

> [!tip] MacTeX and BasicTeX
> Both MacTeX and BasicTeX packages can be installed side by side, but only one PATH can be active at a time.

Source `~/.zshenv` and verify the installation.

```zsh
source ~/.zshenv
which pdflatex
```

## Usage

Compile  `.tex` files to PDF using `pdflatex`.

```zsh
pdflatex project.tex
```

Watch and compile continuously (on save).

```bash
latexmk -pvc -pdf project.tex
```

Manually clean Up auxillary files.

```zsh
rm *.aux *.bbl *.blg *.fdb_latexmk *.fls *.log *.out *.toc
```

## Visual Studio Code

Install the **LaTeX Workshop** extension for Visual Studio Code.

The default settings are sufficient to get started.
## Docker

Pull the unofficial official TeX Live Docker image and grab a ☕️.

```zsh
docker pull texlive/texlive:latest
```

Create and run a Docker container from the TeX Live image with an interactive Bash shell. The current directory is mounted as `/workdir` in the container. Optionally, replace `$PWD` with a specific directory, like `~/Documents/TeX/Project`.

```zsh
docker run -it --name texlive -v $PWD:/workdir texlive/texlive:latest bash
```

See [[Docker]] for more Terminal Commands.

## Docker and Visual Studio Code

Install the **LaTeX Workshop** and **Dev Containers** extensions for Visual Studio Code.

Add the following to `.devcontainer.json` or  `.devcontainer/devcontainer.json` in a LaTeX project directory.

```json
{
  "name": "My TeX Live Container",
  "image": "texlive/texlive",
  "customizations": {
    "vscode": {
      "extensions": [
        "james-yu.latex-workshop"
      ]
    }
  }
}
```

Run **Dev Containers: Reopen in Container** from the Command Palette.

Write $\LaTeX$ and love life.

When finished, run **Dev Containers: Reopen Folder Locally**.

## Experimental Method

> [!info] Experimental implementation on Docker
> With the LaTex Workshop Docker setting enabled, you don't need to run a container. LaTeX Workshop can access the files it needs directly from the Docker image to continuously compile LaTeX files. You just need Docker running, the `texlive/texlive` image downloaded, and the image named in settings. This method is experimental and in [Using Docker](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install#using-docker) it is still recommended to use Dev Containers.

Ensure Docker is running and the `texlive/texlive` image has been Downloaded.

Add the following settings to `settings.json`.

```json
{
	"latex-workshop.docker.enabled": true,
	"latex-workshop.docker.image.latex": "texlive/texlive"
}
```
