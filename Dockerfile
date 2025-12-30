FROM node:14-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Build Vue (production)
RUN npm run build

# Install static server
RUN npm install -g serve

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Port
EXPOSE 8080

CMD ["serve", "-s", "dist", "-l", "8080"]

