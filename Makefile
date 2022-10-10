build:
	docker-compose build --no-cache
.PHONY: build

up:
	docker-compose up -d
.PHONY: up

down:
	docker-compose down
.PHONY: down

down-all:
	docker-compose down --rmi all --volumes --remove-orphans
.PHONY: down-all

gen:
	docker-compose run --rm node yarn install
	docker-compose run --rm node hexo generate
.PHONY: gen
