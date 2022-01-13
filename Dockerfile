FROM ubuntu:latest

WORKDIR  /usr/src/mydir/

RUN apt update
RUN apt install -y curl 
RUN apt-get update && apt-get install -y gnupg2
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
RUN apt install -y git 
RUN apt install -y docker.io 

COPY . .

ENTRYPOINT ./scripts.bash