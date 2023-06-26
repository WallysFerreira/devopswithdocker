FROM golang:1.16
EXPOSE 8080

WORKDIR /usr/src/
COPY . .

RUN go build -ldflags "-w" && \
		go test ./... && \
		adduser appuser

USER appuser

ENV REQUEST_ORIGIN=http://localhost:5000
CMD ["./server"]
