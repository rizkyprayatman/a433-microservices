FROM node:14-alpine AS build

WORKDIR /app

ARG VUE_APP_BACKEND
ENV VUE_APP_BACKEND=$VUE_APP_BACKEND

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Port
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
