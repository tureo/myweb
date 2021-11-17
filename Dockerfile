FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod .
COPY go.sum .

# go env -w GO111MODULE=on && go env -w GOPROXY=https://goproxy.cn,direct
ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn,direct

RUN go mod download

COPY *.go ./

RUN go build -o /myweb

EXPOSE 8080

#ENV HTTP_PORT=8081

# Run
CMD [ "/myweb" ]