#!/bin/bash

directory="/var/www/myapp"

if [ ! -d "$directory" ]; then
    echo "$directory not found, looks like first run"
    echo "Installing CodeIgniter..."
    composer create-project codeigniter4/appstarter myapp
fi

php-fpm
