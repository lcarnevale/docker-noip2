# No-IP2 Service

This is a docker container for running the [noip2](https://www.noip.com/) free dynamic DNS script. The service allows to remote access your computer, DVR, webcam, security camera or any internet connected device easily.

# Quick Start
Setup a free account in [www.noip.com](https://www.noip.com).

Build the docker container:
```bash
docker build -t lcarnevale/noip2 .
```

Run the docker container with environment variables:
```bash
docker run -d --name noip2 -e USERNAME=<username> -e PASSWORD=<password> -e INTERVAL=<interval> lcarnevale/noip2
```
