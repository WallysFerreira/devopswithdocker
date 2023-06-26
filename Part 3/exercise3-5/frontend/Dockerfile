FROM node:16-alpine
EXPOSE 5000

COPY . .
RUN npm install
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm run build
RUN npm install -g serve

RUN adduser -D appuser

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
