.PHONY: test
up:
	docker-compose up
down:
	docker-compose down
build:
	docker-compose build
test:
	docker-compose exec cineopolis rake test