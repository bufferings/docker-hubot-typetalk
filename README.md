# docker-hubot-typetalk

## Run

1 Edit `docker-compose.yml`

```
HUBOT_TYPETALK_CLIENT_ID: "<typetalk client id of your robot>"
HUBOT_TYPETALK_CLIENT_SECRET: "<typetalk client secret of your robot>"
HUBOT_TYPETALK_ROOMS: "<typetalk room id>"
```

2 Run
```
docker-compose up -d
```

## External Scripts

If you want to add external hubot scripts,
please modify `Dockerfile` to install it with npm.

Then modify `external-scripts.json` to activate it.

```
docker-compose build
docker-compose up -d
```

## Your own scripts

Just add your scripts under `scripts` directory.

```
docker-compose build
docker-compose up -d
```

Let's enjoy talking:)
