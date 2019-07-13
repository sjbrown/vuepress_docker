FROM node:alpine

RUN yarn global add vuepress \
    && apk add rsync curl git bash
RUN npm install supervisor -g

WORKDIR /app
COPY . /app

RUN vuepress build


ENTRYPOINT /bin/bash

