# Build stage: Install dependencies and build the project
FROM node:17-alpine

WORKDIR /app

COPY package.json .

RUN npm install -g sass

COPY . .

CMD ["npm", "run", "watch"]

EXPOSE 80
