# Run DBUp as CLI via Docker

[![Build](https://github.com/CloudTooling/dbup-cli/actions/workflows/build.yml/badge.svg)](https://github.com/CloudTooling/dbup-cli/actions/workflows/build.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/cloudtooling/dbup-cli)](https://hub.docker.com/r/cloudtooling/dbup-cli)

## Usage

Run the scripts via docker:

```
docker run -it --network=host -v $(pwd):/src cloudtooling/dbup-cli upgrade
```