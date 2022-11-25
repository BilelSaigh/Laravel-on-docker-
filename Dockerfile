FROM php:8-fpm

# Install extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql


# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
