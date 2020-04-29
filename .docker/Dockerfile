FROM golang:alpine as builder

RUN apk --no-cache add build-base git bzr mercurial gcc

WORKDIR /app
COPY . .

RUN go build -o todo-app .

FROM alpine
WORKDIR /app
COPY --from=builder /app/todo-app /app/
COPY ./.env /app/

EXPOSE 3000
ENTRYPOINT [ "./todo-app" ]