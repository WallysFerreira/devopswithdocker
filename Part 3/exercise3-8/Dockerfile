FROM node:16-alpine as build-stage
EXPOSE 5000
WORKDIR /usr/app

COPY . .
RUN npm install && \
		npm run build

FROM node:16-alpine

COPY --from=build-stage /usr/app/build /build
ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install -g serve && \
		adduser -D appuser

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
