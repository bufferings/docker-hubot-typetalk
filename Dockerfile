FROM node:4.4.0-slim

MAINTAINER Mitsuyuki Shiiba (@bufferings)

RUN groupadd -r hubot \
    && useradd -m -g hubot hubot \
    && npm install -g yo generator-hubot \
    && npm cache clear

USER hubot
WORKDIR /home/hubot

RUN yo --no-insight hubot --defaults
RUN npm install --save hubot-typetalk \
    && npm cache clear
ENV HUBOT_ADAPTER typetalk

COPY hubot-scripts.json ./
COPY external-scripts.json ./
VOLUME ["/home/hubot/scripts"]

# Add your favorite scripts
RUN npm install --save \
    hubot-cron \
    && npm cache clear

CMD [ "bin/hubot" ]