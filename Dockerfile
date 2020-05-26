FROM node:12.16.1-stretch-slim

RUN add-apt-repository -y ppa:git-ftp/ppa 
RUN apt-get update 
RUN apt-get install -y git-ftp

RUN node -v
RUN yarn -v

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["node"]