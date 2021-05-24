FROM golang

WORKDIR /root/app


COPY . .

EXPOSE 8080

ENTRYPOINT ["go","run","main.go","scale.go","home.go","duet.go"]