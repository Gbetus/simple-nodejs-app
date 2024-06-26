# Base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Start the server using the production build
CMD [ "node", "index.js" ]

# Exposing server port
ENV PORT=3001
EXPOSE $PORT

# FROM node:18


# WORKDIR /app

# COPY . .
# ENV PORT=3001
# EXPOSE $PORT

# COPY package*.json ./

# ENTRYPOINT start npm
