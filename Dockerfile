FROM node:alpine

RUN yarn global add vuepress \
    && apk add rsync curl git bash

WORKDIR /app
COPY . /app

RUN vuepress build


ENTRYPOINT /bin/bash

