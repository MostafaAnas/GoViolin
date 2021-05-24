FROM golang:1.16.4-alpine AS builder
RUN mkdir /build
WORKDIR /build
COPY . .
RUN go build

FROM alpine 
RUN mkdir /app
WORKDIR /app
COPY --from=builder /build/ /app/
EXPOSE 8080
ENTRYPOINT ["./GoViolin"]