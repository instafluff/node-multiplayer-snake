FROM node:14-alpine

WORKDIR /src
COPY package*.json ./
RUN npm install --production

COPY . /src
EXPOSE 8080
CMD [ "npm", "start" ]
