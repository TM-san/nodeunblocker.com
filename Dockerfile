FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY package*.json .

RUN npm install

COPY public public/
COPY app.js app.js

EXPOSE 8080

ENTRYPOINT ["node"]
CMD ["app.js"]
