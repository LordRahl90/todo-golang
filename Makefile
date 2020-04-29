build:
	docker build -t lordrahl/todo-app:latest -f .docker/Dockerfile .

push:
	docker push lordrahl/todo-app:latest

run:
	docker-compose -f .docker/docker-compose.yml up

test:
	go test ./...