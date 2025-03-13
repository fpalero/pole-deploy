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

- **`strapi.env`**: Contains the environment variables for the **Strapi** and **StrapiDB** Docker containers.

- **`mediawiki.env`**: Contains the environment variables for the **MediaWikiDB** Docker container.

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

## Notes

* Ensure that the .env files (`strapi.env` and `mediawiki.env`) are properly configured before running Docker Compose.