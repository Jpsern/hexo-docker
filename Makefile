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

restart:
	docker-compose restart apache
	docker-compose restart https-portal
.PHONY: restart

clean:
	docker-compose run --rm node hexo clean
	git checkout app/public
.PHONY: clean

gen:
	docker-compose run --rm node npm install
	docker-compose run --rm node hexo generate
.PHONY: gen
