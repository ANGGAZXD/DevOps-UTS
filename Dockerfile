FROM php:cli
WORKDIR /app
COPY . /app
CMD ["php", "index.php"]
