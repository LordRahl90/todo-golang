PROJECT_NAME := "todo-golang"
PKG := "./"
PKG_LIST := $(shell go list ${PKG}/... | grep -v /vendor/)

build:
	docker build -t lordrahl/todo-app:latest -f .docker/Dockerfile .

push:
	docker push lordrahl/todo-app:latest

run:
	docker-compose -f .docker/docker-compose.yml up

test:
	@go test ./...

lint:
	@golint -set_exit_status ${PKG_LIST}

vet:
	@go vet ${PKG_LIST}

test-coverage:
	@go test -short -coverprofile cover.out -covermode=atomic ${PKG_LIST}
	@cat cover.out >> coverage.txt

dep:
	@go mod download

build-project: dep ## Build the binary file
	@go build -i -o build/main $(PKG)