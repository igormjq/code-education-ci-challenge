FROM golang:1.12-alpine AS builder

WORKDIR /app

COPY ./src/main.go .
COPY ./src/*_test.go . 

RUN go build -ldflags '-s -w' main.go
RUN go test

FROM scratch

WORKDIR /app

COPY --from=builder /app/main / 

CMD ["/main"]