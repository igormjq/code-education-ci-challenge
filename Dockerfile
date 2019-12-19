FROM golang:1.12-alpine AS builder

WORKDIR /app

COPY ./src/app/main.go .

RUN go build -ldflags '-s -w' main.go

FROM scratch

WORKDIR /app

COPY --from=builder /app/main / 

CMD ["/main"]