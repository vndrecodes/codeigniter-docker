#!/bin/bash

directory="/var/www/html/myapp"

if [ ! -d "$directory" ]; then
    echo "$directory not found, looks like first run"
    echo "Installing CodeIgniter..."
    composer create-project codeigniter4/appstarter myapp
fi

php-fpm
