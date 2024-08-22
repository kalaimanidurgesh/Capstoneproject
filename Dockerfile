
FROM nginx:alpine

# Copy the build output to Nginx's default directory
COPY build/ /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

