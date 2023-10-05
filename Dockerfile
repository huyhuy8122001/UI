FROM node:18.18.0-buster

WORKDIR /code

COPY package.json package.json
# COPY package-lock.json package-lock.json

RUN yarn install

COPY . ./

CMD ["yarn", "run", "start"]