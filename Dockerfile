FROM node:alpine

RUN mkdir -p usr/src

WORKDIR /usr/src

COPY . /usr/src

# install dependencies
RUN npm install

# start app
RUN npm run build
EXPOSE 3000
CMD npm run start

