# Developer Documentation

## Prerequisites

- Docker and Docker Compose installed
- Git installed
- A virtual machine running Debian 12

## Setup from Scratch

### 1. Clone the repository
```bash
git clone git@github.com:wangunuxe/inception.git
cd inception
```

### 2. Create the .env file
```bash
cat > srcs/.env << EOF
DOMAIN_NAME=jili.42.fr
MYSQL_DATABASE=wordpress
MYSQL_USER=jili
MYSQL_PASSWORD=your_password
MYSQL_ROOT_PASSWORD=your_root_password
WP_ADMIN_USER=jili_wp
WP_ADMIN_PASSWORD=your_admin_password
WP_ADMIN_EMAIL=jili@student.42.fr
WP_USER=jili_user
WP_USER_PASSWORD=your_user_password
WP_USER_EMAIL=jiliuser@student.42.fr
EOF
```

### 3. Create the secrets files
```bash
echo "your_password" > secrets/db_password.txt
echo "your_root_password" > secrets/db_root_password.txt
echo "jili" > secrets/db_user.txt
```

### 4. Add domain to /etc/hosts
```bash
echo "127.0.0.1 jili.42.fr" >> /etc/hosts
```

## Build and Launch

```bash
make
```

## Useful Commands

```bash
# Check running containers
docker ps

# View logs
docker logs mariadb
docker logs wordpress
docker logs nginx

# Stop containers
make down

# Rebuild everything
make re

# Full cleanup
make fclean
```

## Data Storage

All persistent data is stored on the host machine at:
- `/home/inception_1/data/db` — MariaDB database files
- `/home/inception_1/data/wordpress` — WordPress website files