# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React application
RUN npm run build

# Install a simple HTTP server to serve the React app
RUN npm install -g serve

# Expose port 80
EXPOSE 80

# Command to run the HTTP server
CMD ["serve", "-s", "build", "-l", "80"]

