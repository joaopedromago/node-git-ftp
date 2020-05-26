FROM node:12.16.1-stretch-slim

RUN apt-get update 
RUN apt-get install -y git-ftp

RUN node -v
RUN yarn -v

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["node"]