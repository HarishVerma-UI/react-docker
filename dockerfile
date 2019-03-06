FROM node:latest

#Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm build

COPY package.json /usr/src/app/

RUN npm install
RUN npm audit fix

ADD src /usr/src/app/src
ADD public /usr/src/app/public

CMD ["npm","start"]

#3e683a31a5ae