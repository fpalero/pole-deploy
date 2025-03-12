# README
THis proect is responsible of deploying all the necessary docker images for the application Pole Management.

## Structure
The poject has the files and the folders:
* compose.yaml: this file has teh configuration for running 
* strapi, strapiDB (it is a MariaDB docker), mediawiki and 
* mediawikiDB (it is a MarioDB docker)
* nginx: this folder contains the nginx configuration
* strapi.end: contians the environment variables for strapi and strapiDB dockers
* mediawiki.env: contians the environment variables for mediawikiDB docker

## Commands
Run all the docker using the docker compose commands:
```
docker compose up -d
```
Before running docker compose it is necessary download the custom strapi docker image for the pole project.
```
# Log in ghcr.io using the githun token
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
```
After login, it is possible to pull the docker imgage:
```
docker pull  ghcr.io/fpalero/poleprojectstrapi:latest
```
