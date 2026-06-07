COMPOSE_FILE = srcs/docker-compose.yml
DATA_DIR = /home/inception_1/data

all:
	mkdir -p $(DATA_DIR)/db
	mkdir -p $(DATA_DIR)/wordpress
	docker compose -f $(COMPOSE_FILE) up -d --build

down:
	docker compose -f $(COMPOSE_FILE) down

stop:
	docker compose -f $(COMPOSE_FILE) stop

re: fclean all

clean:
	docker compose -f $(COMPOSE_FILE) down -v

fclean: clean
	docker system prune -af
	sudo rm -rf $(DATA_DIR)/db/*
	sudo rm -rf $(DATA_DIR)/wordpress/*

.PHONY: all down stop re clean fclean