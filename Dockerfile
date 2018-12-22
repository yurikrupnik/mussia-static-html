FROM node:alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm install
COPY root/index.html ./root/index.html
ENV ROOT_PATH root
COPY server.js ./


CMD npm start
EXPOSE 3000