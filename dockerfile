# Gunakan image dasar PHP dengan Apache
FROM php:8.1-apache

# Copy file aplikasi Anda ke folder /var/www/html di dalam container
COPY . /var/www/html

# Install ekstensi PHP yang dibutuhkan (misalnya mysqli)
RUN docker-php-ext-install mysqli

# Berikan izin yang tepat ke direktori
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 agar container bisa diakses melalui HTTP
EXPOSE 80

# Jalankan Apache server
CMD ["apache2-foreground"]
