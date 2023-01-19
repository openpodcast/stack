# Use bash
SHELL = /bin/bash

.PHONY: help
help: ## List all make commands
	@grep -E '^[a-zA-Z_ -]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	
.PHONY: up
up: ## Start the docker containers
	docker-compose up -d
	docker-compose logs -f

.PHONY: up-all
up-all: ## Start the docker containers (including forwarder)
	docker-compose --profile all up
	docker-compose logs -f

.PHONY: env 
env: ## Create required .env files from sample files
	for file in $$(find . -name ".env.*.sample"); do cp $${file} $${file%.*}; done 

.PHONY: up-%
up-%: ## Start the docker containers for a specific service
	docker-compose up -d $*
	docker-compose logs -f $*

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

.PHONY: shell-% 
shell-%: ## run shell for given container e.g. shell-db
	docker-compose exec $* /bin/sh

.PHONY: logs
logs: ## Show logs
	docker-compose logs -f

.PHONY: logs-%
logs-%: ## Show logs for a specific service
	docker-compose logs $* -f

.PHONY: send-api-req-local
send-api-req-local: ## Send a request to the local running server
	curl -X POST http://localhost:8080/events -H 'Content-Type: application/json' -H 'Authorization: Bearer cn389ncoiwuencr' --data-binary "@./fixtures/forwarder.json" 

.PHONY:dumpmetabase
dumpmetabase: ## dump the database from db container
	docker-compose exec db /bin/sh \
	-c 'mysqldump -uroot -proot --databases metabase' \
	| grep -v "Using a password on the command line interface can be insecure" \
	> ./db_schema/metabase_local_$(shell date +%FT%T%z).tmp.sql
