FROM golang:1.17

WORKDIR /
COPY go.mod go.mod
COPY main.go main.go

RUN go build -a -o main github.com/jcanseco/test-repo-for-cloudbuildtrigger

ENTRYPOINT ["./main"]
