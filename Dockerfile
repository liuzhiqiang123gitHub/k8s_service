FROM golang:alpine
ENV GO111MODULE=on
    CGB_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64
WORKDIR /build
COPY . .
RUN go build -o app .
EXPOSE 8888
CMD ["/build/app"]