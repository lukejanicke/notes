# Docker

- [Docker](https://www.docker.com)

### Commands

| Command                                    | Description                                            |
| ------------------------------------------ | ------------------------------------------------------ |
| `exit`                                     | Exit the interactive shell.                            |
| `docker exec -it container_name /bin/bash` | Restart the interactive shell for a running container. |
| `docker stop container_name`               | Stop a container.                                      |
| `docker ps -a`                             | See all containers (running and stopped).              |
| `docker start container_name`              | Restart a container.                                   |
| `docker start -ai container_name`          | Restart a container with an interactive shell.         |
| `docker rm container_name`                 | Remove a container.                                    |

## Install

Install [Rosetta 2](https://support.apple.com/en-au/102527).

```shell
softwareupdate --install-rosetta
```

Download and install **Docker Desktop** directly from the official website.

## Usage

Browse and search for images in the **Docker** app.

Pull an image using the app or the `docker pull` command in [Terminal](Terminal.md).

```zsh
docker pull image_namespace/image_name:<tag>
```

Create and run a **Docker** container from an image with an interactive **Bash** shell. The current directory is mounted as `/work` in the container. Optionally, replace `$(pwd)` with a specific directory, like `~/Documents/Project`.

```zsh
docker run \
    -it \
    --name container_name \          # Give the container a descriptive name
    -v "$(pwd):/work" \              # Use $(pwd) for better cross-platform compatibility and consistent quoting
    -w /work \                       # Explicitly set the working directory inside the container
    image_namespace/image_name:tag \ # Use the full image name (if not a library image)
    /bin/bash                        # Use /bin/bash for clarity (though just bash usually works)
```

```shell
docker run -it --name container_name -v "$(pwd):/work" -w /work image_namespace/image_name:tag /bin/bash
```
