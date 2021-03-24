FROM node:12-alpine

RUN apk update
RUN apk add git
RUN apk add openssh
RUN apk add openssh-keygen
RUN ssh-keygen -R hostname

LABEL maintainer="Telefonica I+D"

ARG GITHUB_TOKEN

COPY . /opt

WORKDIR /opt

RUN yarn --production
RUN rm -f /opt/.npmrc

EXPOSE 3000

CMD [ "yarn", "start" ]

