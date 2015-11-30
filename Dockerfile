FROM golang
MAINTAINER astaxie xiemengjun@gmail.com

RUN go get github.com/astaxie/beego

ADD src /go/src/src

WORKDIR /go/src/src

RUN go build

EXPOSE 8080

CMD ["./ymcraft"]