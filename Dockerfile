FROM daocloud.io/library/node

MAINTAINER topeas<peiqixin@gmail.com>

# Create app directory
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

COPY . /usr/src/app

RUN npm i -g yarn && yarn 

EXPOSE 6324

CMD [ "yarn", "dev" ] 

