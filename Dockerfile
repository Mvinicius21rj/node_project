FROM node:12-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

#injetando variaveis de ambiante datadog
ENV DD_ENV="stage"

ENV DD_LOGS_INJECTION=true

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install && npm install --save dd-trace

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]
