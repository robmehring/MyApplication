FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN go get github.com/robmehring/MyApplication