![Docker Image Size (tag)](https://img.shields.io/docker/image-size/marcelorodrigo/mailcatcher/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/marcelorodrigo/mailcatcher)
![Linux AMD64](https://img.shields.io/badge/linux-amd64-orange)
![Linux ARM64](https://img.shields.io/badge/linux-arm64-orange)
![Linux ARMV7](https://img.shields.io/badge/linux-armv7-orange)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=marcelorodrigo_mailcatcher&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=marcelorodrigo_mailcatcher)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=marcelorodrigo_mailcatcher&metric=security_rating)](https://sonarcloud.io/summary/new_code?id=marcelorodrigo_mailcatcher)

# Mailcatcher
Lightweight multiarchitecture [Mailcatcher](https://mailcatcher.me/) Docker image

Based on [Alpine Linux](https://www.alpinelinux.org/), it generates a very small footprint (~27Mb) docker image.
## Usage

Pull it:

    docker pull marcelorodrigo/mailcatcher
    
You can also pull from Github Docker Registry:

    docker pull ghcr.io/marcelorodrigo/mailcatcher:master

Running as service exposing ports:

    docker run -d -p 1080:1080 -p 1025:1025 --name mailcatcher marcelorodrigo/mailcatcher

    
Every email sent using your docker container on the mapped port 1025, can be checked at

    http://[dockerhost]:1080/
