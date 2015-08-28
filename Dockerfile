FROM node:0.8.28

MAINTAINER ruoyu.xu@windriver.com

RUN	npm install -g atlasboard

EXPOSE 8000

VOLUME /opt/app

WORKDIR /opt/app

CMD ["atlasboard", "start", "8000"]