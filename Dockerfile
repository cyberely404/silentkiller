FROM golang:1.17


WORKDIR /go/src/silentkiller
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

ENTRYPOINT ["silentkiller"]
