FROM golang
MAINTAINER astaxie xiemengjun@gmail.com

RUN go get github.com/astaxie/beego

RUN go get github.com/ycx0v0/ymcraft

ADD ./src /go/src/

WORKDIR /go/src/src

RUN go build

EXPOSE 8080

CMD ["./ymcraft"]