FROM ubuntu:bionic
RUN apt-get update &&\
	apt-get install -y curl &&\
	curl -sL https://deb.nodesource.com/setup_16.x | bash &&\
	apt-get install -y nodejs
WORKDIR /app
COPY app/package*.json .
RUN npm install
COPY app .
EXPOSE 3000
CMD ["node", "index.js"]
