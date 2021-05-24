FROM golang:1.16.4-alpine

RUN mkdir /build
WORKDIR /build
COPY . .

EXPOSE 8080
RUN go build
ENTRYPOINT ["./GoViolin"]