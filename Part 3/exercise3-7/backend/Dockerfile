FROM golang:1.16-alpine
EXPOSE 8080

WORKDIR /usr/src/
COPY . .

RUN apk add --no-cache build-base && \
		go build -ldflags "-w" && \
		go test ./... && \
		adduser -D appuser && \
		apk del build-base

USER appuser

ENV REQUEST_ORIGIN=http://localhost:5000
CMD ["./server"]
