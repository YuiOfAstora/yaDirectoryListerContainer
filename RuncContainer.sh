#! /bin/bash
#Script for build and run docker container

#Build the image at current working directory
docker build -t directorylister .

#Start the container
#Set the name of container
#Port 3000
#Mount directory
#Display readme files in the directory
#Customize the Meta tag description <meta name="description"> text
#Show readme files before the directory
#Set the text displayed in the browser tab/title bar along with the current path
#Set timezone https://www.php.net/manual/en/timezones.php
#Allow downloading of directories as a zip archive.
docker run -d \
    --name=directorylister \
    -p 3000:80 \
    -v /File/Path:/var/www/html/dir \
    -e DISPLAY_READMES=true \
    -e META_DESCRIPTION="Yui's shared files, powered by Directory Lister." \
    -e READMES_FIRST=true \
    -e SITE_TITLE="Yui's Files" \
    -e TIMEZONE=Asia/Shanghai \
    -e ZIP_DOWNLOADS=false \
    directorylister:latest
