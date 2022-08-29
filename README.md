# PostgreSQL with PgAgent

This repository is to allow you to run PostgreSQL database together with pgAgent in one container. 
PgAgent gives you ability to run recurring jobs inside database.

### Build the image
#
```sh
$ docker build . -t postgres-pgagent:12.3
```

### Run the image
#
```sh
$ docker run -d -p 5432:5432 
    -e POSTGRES_USER=username -e POSTGRES_PASSWORD=password \
    -v pgdata:/var/lib/postgresql/data \
    --restart=alway \
    postgres-pgagent:12.3
```
