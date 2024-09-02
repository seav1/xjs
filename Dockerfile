FROM node:lts-bookworm-slim

WORKDIR .

COPY package.json index.js cf nz ./

RUN apt-get update &&\
    chmod +x cf nz &&\
    npm install

CMD ["node", "index.js"]

EXPOSE 7860
