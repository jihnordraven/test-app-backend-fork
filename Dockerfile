FROM node:18.15

USER node

RUN mkdir -p /home/node/dist/app

WORKDIR /home/node/dist/app

COPY --chown=node package*.json ./

RUN npm install

COPY --chown=node . .

RUN npm build

EXPOSE 4200

CMD [ "npm", "run", "dev"]
