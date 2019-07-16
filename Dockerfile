FROM node:alpine

RUN yarn global add vuepress \
    && apk add rsync curl git bash
RUN npm install supervisor -g


COPY . /app
WORKDIR /app/docs

RUN vuepress build
RUN yarn global add -D @vuepress/plugin-active-header-links@next

ENTRYPOINT /bin/bash

