# JA-Docker-Collection

A collection of docker and docker compose template


# IMPORTANT FOR ALL DOCKER FILE

Don't use latest when defining an image

es. `FROM node:latest`

Always enter the specific version

es. `FROM node:16.10.0-alpine`

Then remember to try to use lightweight images, and therefore use alpine,
slim or something like that.

You don't need everything, just the necessities