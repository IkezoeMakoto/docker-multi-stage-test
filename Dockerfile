# ビルド用
FROM golang:alpine AS build

ADD . /go/github.com/IkezoeMakoto/docker-multi-stage-test
WORKDIR /go/github.com/IkezoeMakoto/docker-multi-stage-test

RUN go build -o hello main.go

# 稼働用
FROM busybox
COPY --from=build /go/github.com/IkezoeMakoto/docker-multi-stage-test/hello hello
ENTRYPOINT ["./hello"]