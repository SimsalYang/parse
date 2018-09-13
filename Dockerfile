FROM node:latest

RUN mkdir parse

ADD . /parse
WORKDIR /parse
RUN npm install -g yarn
RUN yarn

ENV APP_NAME testApp
ENV MOUNT_PATH /parse
ENV DASHBOARD_PATH /dashboard
ENV APP_ID myAppId
ENV MASTER_KEY myMasterKey
ENV DATABASE_URI mongodb://192.168.2.200:27017/dev
ENV REST_KEY myRestKey
ENV FILE_KEY optionalFileKey
ENV SERVER_URL http://192.168.2.200:1337/parse
# ENV CLOUD_CODE_MAIN /parse/cloud/main.js

EXPOSE 1337

CMD [ "node", "app.js" ]