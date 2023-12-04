FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY package*.json .

RUN npm install

COPY public public/
COPY app.js app.js
COPY app.json app.json

EXPOSE 8080

CMD ["npm","start"]
