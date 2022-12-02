.PHONY: up down build test
up:
	docker-compose up
down:
	docker-compose down
build:
	docker build -t victorrubia/mi_cc_ugr .
test: build
	docker run victorrubia/mi_cc_ugr