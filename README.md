# Directory Lister

This is a container (Podman/Docker) ready version of Directory Lister.

[Directory Lister](https://github.com/DirectoryLister/DirectoryLister) is the easiest way to expose the contents of any web-accessible folder for browsing and sharing.

- [Directory Lister](#directory-lister)
  - [Version Tags](#version-tags)
  - [Usage](#usage)
    - [docker-compose](#docker-compose)
    - [cli](#cli)
  - [Parameters](#parameters)
  - [Environment Variables](#environment-variables)

## Version Tags

This image follows the [semver](https://semver.org/) of the [Directory Lister](https://github.com/DirectoryLister/DirectoryLister) project starting with version `3.10.1`.

## Usage

This container can be used easily with Docker or Podman. Any files/directories you want to expose must have read permissions for `Other` users.

### docker-compose

```
---
version: "2.1"
services:
  directorylister:
    container_name: directorylister
    image: docker.io/burnedvpn/directorylister
    ports: [ 8008:80 ]
    environment:
      - READMES_FIRST=true # Displays README.md's at the top of the page
    volumes:
    - /path/to/dir:/var/www/html/dir # Exposes /path/to/dir as a subdirectory.
```

### cli

The `podman` command is interchangeable with `docker`

```
podman run -d \
  --name=directorylister
  -p 8008:80 \
  -e DISPLAY_READMES=false # Displays README.md's at the top of the page
  -v /path/to/dir:/var/www/html/dir \
  docker.io/burnedvpn/directorylister
```

## Parameters

| Parameter | Description |
| :-: | :-: |
| -p 8008:80 | This forwards port `80` in the container to port `8008` on the host |
| -v `/path/to/dir`:/var/www/html/`dir` | Do not replace the root `/var/www/html` directory as it will cause the Directory Lister app to not work.<br/>Any directories you want listed should be a subdirectory of `/var/www/html` in the container |

## Environment Variables

This container can utilize all Directory Lister Environment Variables. [Click Here](https://docs.directorylister.com/configuration/app-config-reference) to see the official documentation.

For example, if you'd like to hide `README.md` files, you can pass `-e DISPLAY_READMES=false` to the [cli](#cli) command above.
