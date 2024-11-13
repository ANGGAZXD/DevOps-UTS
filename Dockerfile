FROM php:cli
WORKDIR /app
COPY . /app
CMD ["php", "login.php"]
