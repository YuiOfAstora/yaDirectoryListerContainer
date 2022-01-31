# Directory Lister

[![Build Status](https://ci.battlenet.work/api/badges/containers/DirectoryLister/status.svg)](https://ci.battlenet.work/containers/DirectoryLister)

This is a container (Podman/Docker) ready version of Directory Lister.

[Directory Lister](https://github.com/DirectoryLister/DirectoryLister) is the easiest way to expose the contents of any web-accessible folder for browsing and sharing.

- [Directory Lister](#directory-lister)
  - [Usage](#usage)
    - [docker-compose](#docker-compose)
    - [cli](#cli)
  - [Parameters](#parameters)

## Usage

### docker-compose
```
---
version: "2.1"
services:
  directorylister:
    container_name: directorylister
    image: registry.battlenet.work/burnedvpn/directorylister
    ports: [ 80:80 ]
    volumes:
```
### cli
The `podman` command is interchangeable with `docker`
```
podman run -d \
  --name=directorylister
  -p \
  -v \
  registry.battlenet.work/burnedvpn/directorylister
```
## Parameters
