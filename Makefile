.PHONY: test
up:
	docker-compose up
down:
	docker-compose down
build:
	docker build -t cineopolis .
test:
	docker-compose run cineopolis rake test