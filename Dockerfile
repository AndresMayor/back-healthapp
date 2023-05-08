FROM node:9.11.1-alpine

WORKDIR /app

COPY package*.json ./

RUN apk update
RUN npm install


COPY . . /app/


EXPOSE 8089


CMD ["npm","start"] 