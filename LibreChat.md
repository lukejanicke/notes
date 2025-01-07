# LibreChat

- [LibreChat](https://www.librechat.ai) / [GitHub](https://github.com/danny-avila/LibreChat)
- [Local Installation of LibreChat with Docker](https://www.librechat.ai/docs/local/docker)

# Setup

Clone the repository to `~/librechat`.

```shell
git clone https://github.com/danny-avila/LibreChat.git ~/librechat
```

In `~/librechat`, create a `.env` file from `.env.example`.

```shell
cp .env.example .env
```

Start **LibreChat**.

```shell
docker compose up -d
```

Access **LibreChat** at [http://localhost:3080/](http://localhost:3080/).

Stop and restart **LibreChat**.

```shell
docker stop librechat
```

```shell
docker start librechat
```

## Update

Run the following from `./librechat`.

```shell
docker compose down
```

```shell
git pull
```

```shell
docker compose pull
```

```shell
docker compose up
```
