# Use bash
SHELL = /bin/bash

.PHONY: up
up: ## Start the docker containers
	docker-compose up -d

.PHONY: down
down: ## Stop containers
	docker-compose down

.PHONY: status
status: ## Show status of containers
	docker-compose ps

.PHONY: build
build: ## Build the docker images
	docker-compose build

.PHONY: logs
logs: ## Show logs
	docker-compose logs -f

.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"

