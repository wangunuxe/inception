# User Documentation

## Services

This stack provides the following services:
- **WordPress** website accessible at `https://jili.42.fr`
- **MariaDB** database for WordPress data
- **NGINX** reverse proxy with TLS encryption

## Start and Stop

### Start the project
```bash
make
```

### Stop the project
```bash
make down
```

### Full cleanup (removes all data)
```bash
make fclean
```

## Access the Website

- Website: `https://jili.42.fr`
- Admin panel: `https://jili.42.fr/wp-admin`

## Credentials

Credentials are stored in:
- `srcs/.env` — database and WordPress users
- `secrets/` — passwords

## Check Services

```bash
docker ps
```

All three containers (nginx, wordpress, mariadb) should show status `Up`.

To check logs:
```bash
docker logs nginx
docker logs wordpress
docker logs mariadb
```