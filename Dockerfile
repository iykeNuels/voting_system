
# Use the official PHP image with Apache
FROM php:7.4-apache

# Copy the project files into the container
COPY . /var/www/html/

# Expose port 80 for the Apache server
EXPOSE 80

# Start the Apache server in the foreground
CMD ["apache2-foreground"]
