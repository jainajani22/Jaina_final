# Use Node.js base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy all source files
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the application
CMD ["node", "src/index.js"]
