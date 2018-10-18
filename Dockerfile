FROM golang:latest 
RUN mkdir /app 
ADD . /app/
WORKDIR /app/src
RUN go get github.com/gorilla/websocket
RUN go build -o main .
EXPOSE 80
CMD ["/app/src/main"]