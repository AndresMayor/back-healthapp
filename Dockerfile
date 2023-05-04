FROM node:9.11.1-alpine

WORKDIR /app

COPY package*.json ./

RUN apk update
RUN npm install
RUN npm install express --save
RUN npm install nano --save
RUN npm install cors --save
RUN npm install -g loadtest --save

COPY . . /app/


EXPOSE 8089


CMD ["npm","start"] 