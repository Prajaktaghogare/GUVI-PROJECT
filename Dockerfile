# Use an official Nginx runtime as the base image
FROM nginx:latest

# Set the working directory within the container
WORKDIR /usr/share/nginx/html

# Copy the HTML and CSS files from your local directory into the container
COPY index.html .
COPY style.css .

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
