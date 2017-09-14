FROM node:8.5-alpine

ENV APP_PORT=6324

LABEL maintainer topeas<peiqixin@gmail.com>

WORKDIR /usr/src/app

RUN mkdir -p /usr/src/app

COPY package.json /usr/src/app/ 

COPY . /usr/src/app

RUN npm i -g yarn && yarn 

HEALTHCHECK CMD curl --fail http://localhost:$APP_PORT || exit 1

EXPOSE $APP_PORT

CMD [ "yarn", "start" ] 

