FROM node:10-alpine as builder

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

WORKDIR /app

RUN npm ci

COPY . /app

EXPOSE 4000

ENTRYPOINT ["npm", "run", "start" ]