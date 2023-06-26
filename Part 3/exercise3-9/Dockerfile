FROM golang:1.16-alpine as build-stage

WORKDIR /go/src/
COPY . .

RUN apk add --no-cache build-base && \
		CGO_ENABLED=0 go build -o server . && \
		go test ./... && \
		apk del build-base

FROM scratch
EXPOSE 8080

COPY --from=build-stage /go/src/server .

ENV REQUEST_ORIGIN=http://localhost:5000
CMD ["./server"]
