# Use an official Nginx runtime as the base image
FROM nginx:latest

# Copy your HTML files to the Nginx default directory
COPY ./ /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
