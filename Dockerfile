# Base image Node.js
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port sesuai .env
EXPOSE 3000

# Run application
CMD ["npm", "start"]
