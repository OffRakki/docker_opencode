FROM debian:stable-slim

WORKDIR	/app

RUN apt update && \
apt install curl -y && \
apt install unzip -y && \
apt install nodejs -y && \
apt install npm -y && \
npm i -g opencode-ai && \
apt clean && apt-get clean

ENTRYPOINT opencode
CMD ["--default-arg"]
