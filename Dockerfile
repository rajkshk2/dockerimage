# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the maintainer label
LABEL maintainer="your-email@example.com"

# Update the package list and install Apache
RUN apt-get update && apt-get install -y \
    apache2 \
    && apt-get clean

# Copy the custom HTML file to the Apache web directory
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
