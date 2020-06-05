FROM node:14-alpine 

WORKDIR /src

ADD package.json /src

RUN npm i --silent

ADD . /src

RUN npm run build 

CMD npm start
