FROM node
WORKDIR /app

COPY . .
ENV PORT=3001
EXPOSE $PORT

COPY package*.json ./

ENTRYPOINT start npm
