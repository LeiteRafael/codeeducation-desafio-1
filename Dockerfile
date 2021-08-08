FROM golang:alpine AS builder
WORKDIR /go/src/app
COPY . /go/src/app
RUN go build desafio.go

FROM scratch
COPY --from=builder /go/src/app/desafio desafio
ENTRYPOINT ["./desafio"]