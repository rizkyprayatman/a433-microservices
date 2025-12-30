FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production && \
    npm install -g serve@14.2.1

COPY . .

RUN npm run build

EXPOSE 8080

CMD ["serve", "-s", "dist", "-l", "8080"]
