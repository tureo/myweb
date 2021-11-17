FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY *.go ./

RUN go build -o /myweb

EXPOSE 8080

#ENV HTTP_PORT=8081

# Run
CMD [ "/myweb" ]