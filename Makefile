# Use bash
SHELL = /bin/bash

.PHONY: help
help: ## This help message
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"

.PHONY: up
up: ## Start the docker containers
	docker-compose up -d
	docker-compose logs -f

.PHONY: up-all
up-all: ## Start the docker containers (including forwarder)
	docker-compose --profile all up
	docker-compose logs -f

.PHONY: down stop
down stop: ## Stop containers
	docker-compose down

.PHONY: clean reset
clean reset: ## Remove containers and volumes
	docker-compose down -v

.PHONY: status
status: ## Show status of containers
	docker-compose ps

.PHONY: build
build: ## Build the docker images
	docker-compose build

.PHONY: restart reboot
restart reboot: ## Restart the docker containers
	docker-compose restart

.PHONY: logs
logs: ## Show logs
	docker-compose logs -f

.PHONY: send-api-req-local
send-api-req-local: ## Send a request to the local running server
	curl -X POST http://localhost:8080/events -H 'Content-Type: application/json' -H 'Authorization: Bearer cn389ncoiwuencr' --data-binary "@./fixtures/forwarder.json" 

