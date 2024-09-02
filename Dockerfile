FROM node:lts-bookworm-slim

WORKDIR .

COPY package.json index.js cf nz ./

RUN apt-get update &&\
    apt-get install -y wget unzip iproute2 &&\
    npm install -g pm2 &&\
    chmod 755 package.json index.js cf nz &&\
    npm install

CMD ["node", "index.js"]

EXPOSE 8080
