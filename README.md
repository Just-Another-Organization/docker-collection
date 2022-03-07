# JA-Docker-Collection :whale:

A collection of docker and docker compose template


# IMPORTANT FOR ALL DOCKER FILE :exclamation:

Don't use latest when defining an image

es. `FROM node:latest` :x:

Always enter the specific version

es. `FROM node:16.10.0-alpine` :white_check_mark:

Then remember to try to use lightweight images, and therefore use alpine,
slim or something like that.

You don't need everything, just the necessities


# How to contribute to the repository :rocket:

- Create a folder and name it with a meaningful name
- Put all Dockerfile or docker-compose in the folder
- Creates a small description of the content via a README.md file