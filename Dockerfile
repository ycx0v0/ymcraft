FROM golang
MAINTAINER astaxie xiemengjun@gmail.com

RUN go get github.com/astaxie/beego

RUN go get github.com/ycx0v0/ymcraft

WORKDIR /go/src/github.com/ycx0v0/ymcraft

RUN go build

EXPOSE 8080

CMD ["./ymcraft"]