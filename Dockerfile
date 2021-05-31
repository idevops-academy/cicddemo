FROM node:12.18-alpine
ENV port=3000
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . ./
EXPOSE ${port}
CMD npm start
