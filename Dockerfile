FROM golang:1.16.4-alpine

RUN mkdir /build
WORKDIR /build
COPY . .

ENTRYPOINT ["go","build"]