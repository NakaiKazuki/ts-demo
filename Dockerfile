FROM node:18.16-alpine3.18

ENV APP_ROOT /node
# ENV APP_ROOT /node/appname

RUN npm install -g pnpm && \
    mkdir -p $APP_ROOT

WORKDIR $APP_ROOT

COPY . .

EXPOSE 7000