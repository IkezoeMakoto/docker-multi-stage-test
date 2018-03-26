FROM golang:alpine

ADD . /go/github.com/IkezoeMakoto/docker-multi-stage-test
WORKDIR /go/github.com/IkezoeMakoto/docker-multi-stage-test

RUN go build -o hello main.go

ENTRYPOINT ["/usr/local/bin/hello"]