FROM node:alpine
# Prepare app directory
RUN mkdir -p /usr/src/app
#ADD . /usr/src/app
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
COPY server.js ./
RUN npm install

#COPY root/index.html ./root/index.html
#ENV ROOT root
#CMD npm start
EXPOSE 3000