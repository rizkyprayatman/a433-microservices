# Base image Node.js versi 14
FROM node:14

# Working directory container
WORKDIR /app

# Copy source code
COPY . .

# Environment production + host database
ENV NODE_ENV=production DB_HOST=item-db

# Install dependency & build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Start server
CMD ["npm", "start"]
