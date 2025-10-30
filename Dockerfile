FROM debian:stable-slim

RUN apt update && \
apt install curl -y && \
apt install unzip -y && \
curl -fsSL https://opencode.ai/install | bash && \
apt clean && apt-get clean
