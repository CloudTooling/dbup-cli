# Run DBUp as CLI via Docker

[![Build](https://github.com/CloudTooling/dbup-cli/actions/workflows/build.yml/badge.svg)](https://github.com/CloudTooling/dbup-cli/actions/workflows/build.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/cloudtooling/dbup-cli)](https://hub.docker.com/r/cloudtooling/dbup-cli)

## Usage

Run the scripts via docker:

```
connectionString="Data Source = localhost; User ID = sa; Password = Passw0rd; Max Pool Size = 1000"
docker run --network=host -e CONNSTR="$connectionString" -v $(pwd)/test:/src cloudtooling/dbup-cli upgrade
```

If you want to use a custom working directory, use this as volume mount and provide the env var:


connectionString="Data Source = localhost; User ID = sa; Password = Passw0rd; Max Pool Size = 1000"
docker run --network=host -e CONNSTR="$connectionString" -e WORK_DIR=scripts/sql -v $(pwd):/scripts/sql cloudtooling/dbup-cli upgrade
```