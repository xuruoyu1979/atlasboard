FROM index.alauda.cn/library/node:0.10.38

MAINTAINER ruoyu.xu@windriver.com

RUN	export USER=root && \
	mkdir -p /root/.node-gyp/0.10.38 && \
	chmod 777 /root/.node-gyp/0.10.38 && \
	npm config set registry https://registry.npm.taobao.org && \
	npm install -g atlasboard

EXPOSE 8000

VOLUME /opt/app

WORKDIR /opt/app

CMD ["atlasboard", "start", "8000"]