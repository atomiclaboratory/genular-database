# Genular Website Repository

This repository contains the [main website](https://genular.atomic-lab.org/) and associated components for the `genular` MongoDB database. It includes a SLIM PHP API, OpenAPI Swagger documentation, and the main website content.

## Components

### SLIM PHP API

The [PHP API](https://genular.atomic-lab.org/api-docs/) for `genular` is built using the SLIM framework. It serves as the backend for the website and provides an interface to interact with the `genular` database.

**Location in Repository:**
`website/public/api`


### OpenAPI Swagger Documentation

The [API documentation](https://genular.atomic-lab.org/api-docs/) is provided through OpenAPI Swagger, offering a detailed specification for the API endpoints, request/response structures, and other necessary details.

**Location in Repository:**
`website/public/documentation`

### Main Website

The [main website](https://genular.atomic-lab.org/) content is housed within this repository.

**Location in Repository:**
`website/public/website`


## Server Configuration

Below is the Nginx server configuration that is used to serve the different components of the `genular` website:

```nginx
server {
    listen 80;
    listen [::]:80;
    server_name genular.local.dev;

    index index.php index.html;
    charset utf-8;
    
    # Redirect from /api-docs to /api-docs/
    location = /api-docs {
        return 301 $scheme://$host/api-docs/;
    }

    # Serve the API documentation from /api-docs/*
    location ^~ /api-docs/ {
        alias /path/to/project/genular-database/libraries/website/public/documentation/;
        try_files $uri $uri/ =404;

        location ~ \.php$ {
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $request_filename;
            fastcgi_pass unix:/run/php-fpm/php-fpm.sock;
            fastcgi_index index.php;
        }
    }

    # Serve the API (SLIM framework) from /api/*
    location ^~ /api/ {
        alias /path/to/project/genular-database/libraries/website/public/api/;

        # Correctly handle requests to PHP files.
        location ~ \.php$ {
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $request_filename;
            fastcgi_pass unix:/run/php-fpm/php-fpm.sock;
            fastcgi_index index.php;
        }

        # Try to serve file directly, then fallback to index.php.
        if (!-e $request_filename) {
            rewrite ^/api/(.*)$ /api/index.php?/$1 last;
        }
    }


    # Serve the main website and static files from the root URL
    location / {
        root /path/to/project/genular-database/libraries/website/public/website;
        try_files $uri $uri/ /index.php$is_args$args;

        location ~* \.php$ {
            try_files $uri =404;
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
            fastcgi_param SCRIPT_NAME $fastcgi_script_name;
            fastcgi_index index.php;
            fastcgi_pass unix:/run/php-fpm/php-fpm.sock;
        }
    }


    location = /favicon.ico { access_log off; log_not_found off; }
    location = /robots.txt  { access_log off; log_not_found off; }

    error_page 404 /index.php;

    location ~ /\.(?!well-known).* {
        deny all;
    }

    access_log /var/log/nginx/genular.local.dev_access.log;
    error_log  /var/log/nginx/genular.local.dev_error.log warn;
}
```
