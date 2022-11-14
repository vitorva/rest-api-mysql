FROM node:alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install -g nodemon && npm install

COPY . .

CMD ["nodemon", "index.js"]