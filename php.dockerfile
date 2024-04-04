# Utilisez l'image WordPress officielle comme image de base
FROM wordpress:latest

# Installer les dépendances nécessaires pour Composer et WP-CLI
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y git && \
    apt-get install -y unzip

# Installer Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installer WP-CLI
RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/local/bin/wp

