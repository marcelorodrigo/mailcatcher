# Mailcatcher
Lightweight multiarchitecture [Mailcatcher](https://mailcatcher.me/) Docker image

Based on [Alpine Linux](https://www.alpinelinux.org/), it generates a very small footprint (~35Mb) docker image.
## Usage

Pull it:

    docker pull marcelorodrigo/mailcatcher
    
You can also pull from Github Docker Registry:

    docker pull ghcr.io/marcelorodrigo/mailcatcher:master

Running as service exposing ports:

    docker run -d -p 1080:1080 -p 1025:1025 --name mailcatcher marcelorodrigo/mailcatcher

    
Every email sent using your docker container on the mapped port 1025, can be checked at

    http://[dockerhost]:1080/
