FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY package*.json .

RUN npm install

COPY public public/

EXPOSE 8080

CMD ["npm", "start"]
