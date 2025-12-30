FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --no-optional

COPY . .

RUN npm run build

EXPOSE 8080

CMD ["serve", "-s", "dist", "-l", "8080"]
