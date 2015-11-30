FROM golang
MAINTAINER astaxie xiemengjun@gmail.com

RUN go get github.com/astaxie/beego

ADD ymcraft /go/src/ymcraft

WORKDIR /go/src/ymcraft

RUN go build

EXPOSE 8080

CMD ["./ymcraft"]