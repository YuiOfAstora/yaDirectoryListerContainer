# Directory Lister

This is a container (Docker) version of Directory Lister.
Fork From https://github.com/burnedvpn/container-DirectoryLister<br>
[Directory Lister](https://github.com/DirectoryLister/DirectoryLister) is the easiest way to expose the contents of any web-accessible folder for browsing and sharing.

## Usage

This container can be used easily with Docker. Any files/directories you want to expose must have read permissions for `Other` users.



## Parameters

| Parameter | Description |
| :-: | :-: |
| -p 8008:80 | This forwards port `80` in the container to port `8008` on the host |
| -v `/path/to/dir`:/var/www/html/`dir` | Do not replace the root `/var/www/html` directory as it will cause the Directory Lister app to not work.<br/>Any directories you want listed should be a subdirectory of `/var/www/html` in the container |

## Environment Variables

This container can utilize all Directory Lister Environment Variables. [Click Here](https://docs.directorylister.com/configuration/app-config-reference) to see the official documentation.

For example, if you'd like to hide `README.md` files, you can pass `-e DISPLAY_READMES=false` to the [cli](#cli) command above.
