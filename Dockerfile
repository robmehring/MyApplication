FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN go get github.com/robmehring/MyApplication/main
RUN cd /build
RUN git clone https://github.com/robmehring/MyApplication.git

RUN cd /build/MyApplication/main
RUN go build

EXPOSE 8000

ENTRYPOINT ["/build/MyApplication/main/main"]