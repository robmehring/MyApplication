FROM golang:latest

RUN mkdir -p /app

WORKDIR /app

ADD . /app

RUN go build ./main.go

EXPOSE 8000

CMD ["./main"]
