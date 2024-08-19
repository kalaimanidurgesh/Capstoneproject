# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app


# Copy package.json and package-lock.json

COPY package*.json ./

# Install dependencies
RUN npm install -g npm@10.8.2

# Copy the rest of the application code
COPY . .

# Build the React application
RUN npm run build

FROM nginx:alpine

# Copy the build output to Nginx's default directory
COPY --from=0 /app/build /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

