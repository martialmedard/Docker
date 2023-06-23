FROM debian:buster-slim

RUN apt-get update 

RUN apt-get install nodejs npm -y

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
