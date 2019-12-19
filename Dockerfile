FROM golang:1.12-alpine AS builder

WORKDIR /app

# COPY ./src/main.go .
# COPY ./src/*_test.go . 

COPY . .

RUN go build -ldflags '-s -w' ./src/main.go
RUN go test ./src

FROM scratch

WORKDIR /app

COPY --from=builder /app/main / 

CMD ["/main"]