# Use official Node.js base image
FROM node:18-alpine

# Set app directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose app port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
