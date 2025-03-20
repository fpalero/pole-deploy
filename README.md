# README

This project is responsible for deploying all the necessary Docker images for the **Pole Management Application**.

---

# Structure

The project contains the following files and folders:

- **`compose.yaml`**: This file contains the configuration for running the following services:
  - **Strapi**: The headless CMS for managing content.
  - **StrapiDB**: A **MariaDB** Docker container for Strapi's database.
  - **MediaWiki**: The wiki platform for documentation.
  - **MediaWikiDB**: A **MariaDB** Docker container for MediaWiki's database.

- **`config/.env.ionic`**: Contains the environment variables for the frontend.
- **`config/.env.strapi`**: Contains the environment variables for the **Strapi** and **StrapiDB** Docker containers.
- **`config/.env.mediawiki`**: Contains the environment variables for the **MediaWikiDB** Docker container.

---

# Commands

### Download Custom Strapi Docker Image

Before running Docker Compose, you need to download the custom Strapi Docker image for the Pole Project.

1. **Log in to `ghcr.io` using your GitHub token**:  
   Replace `USERNAME` with your GitHub username and `$CR_PAT` with your GitHub Personal Access Token (PAT).

   ```bash
   echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

### Run Docker Compose

To start all the Docker containers, use the following commands:

```bash
# Execute the compose file for the DEV environment
docker compose -f compose-dev.yaml up -d

# Execute the compose file for the PROD environment
docker compose -f compose.yaml up -d
```

## MediaWiki Configuration

The `config/LocalSettings.php` file configures the MediaWiki instance. Key settings include:

- **`$wgScriptPath`**: The base path for the wiki.
- **`$wgServer`**: The protocol and server name for fully-qualified URLs.
- **`$wgLogos`**: Paths to the wiki's logo assets.

For more details, refer to the [MediaWiki manual](https://www.mediawiki.org/wiki/Manual:Configuration_settings).

## Development Scripts

The `scripts/start-dev.sh` script automates the development setup process. It performs the following steps:

1. Pulls the latest Docker images from the GitHub Container Registry.
2. Stops and removes existing containers.
3. Pulls Docker images with a clean cache.
4. Starts the Docker containers.

To use it, run:
```bash
./scripts/start-dev.sh
```

## Production Scripts

The `scripts/start-prod.sh` script automates the production setup process. It performs the following steps:

1. Pulls the latest Docker images from the GitHub Container Registry.
2. Stops and removes existing containers.
3. Pulls Docker images with a clean cache.
4. Starts the Docker containers in production mode.

To use it, run:
```bash
./scripts/start-prod.sh
```

## Notes

* Ensure that the .env files (`config/.env.ionic`, `config/.env.strapi`, and `config/.env.mediawiki`) are properly configured before running Docker Compose.