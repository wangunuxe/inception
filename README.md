*This project has been created as part of the 42 curriculum by jili.*

## Description

Inception is a system administration project that uses Docker to set up a small
infrastructure composed of different services. The project deploys a WordPress
website with a MariaDB database, all behind an NGINX reverse proxy with TLS.

### Design Choices

**Virtual Machines vs Docker**
- VMs virtualize an entire OS with its own kernel, requiring more resources
- Docker containers share the host kernel, making them lighter and faster
- We use Docker for each service to ensure isolation and reproducibility

**Secrets vs Environment Variables**
- Environment variables are visible in process listings and logs
- Docker secrets are stored in memory and only accessible to authorized services
- We use `.env` for non-sensitive config and `secrets/` for passwords

**Docker Network vs Host Network**
- Host network shares the host's network stack, reducing isolation
- Docker bridge network isolates containers while allowing controlled communication
- We use a custom bridge network called `inception`

**Docker Volumes vs Bind Mounts**
- Bind mounts depend on the host directory structure
- Named volumes are managed by Docker and more portable
- We use named volumes stored in `/home/jili/data/`

## Instructions

### Prerequisites
- Docker and Docker Compose installed
- Create `srcs/.env` file (see DEV_DOC.md)
- Create `secrets/` files (see DEV_DOC.md)

### Run the project
```bash
make
```

### Stop the project
```bash
make down
```

### Clean everything
```bash
make fclean
```

## Resources

- [Docker documentation](https://docs.docker.com)
- [WordPress CLI](https://wp-cli.org)
- [NGINX documentation](https://nginx.org/en/docs/)
- [MariaDB documentation](https://mariadb.com/kb/en/)
