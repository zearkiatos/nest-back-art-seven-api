FROM node:16-alpine

WORKDIR /usr/src/app

COPY package.json .

RUN npm install -g npm@9.6.6

RUN npm install --quiet

COPY . .

CMD ["npm", "run", "start"]
