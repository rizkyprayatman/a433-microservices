FROM node:14-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Build Vue (production)
RUN npm run build

# Install static server
RUN npm install -g serve

# Port
EXPOSE 8080

CMD ["serve", "-s", "dist", "-l", "8080"]

