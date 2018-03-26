FROM busybox
COPY --from=go-build /go/github.com/IkezoeMakoto/docker-multi-stage-test/hello hello
ENTRYPOINT ["./hello"]