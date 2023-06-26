FROM node:16-alpine
EXPOSE 5000

COPY . .
RUN npm install && \
		npm run build && \
		npm install -g serve && \
		adduser -D appuser
ENV REACT_APP_BACKEND_URL=http://localhost:8080

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
