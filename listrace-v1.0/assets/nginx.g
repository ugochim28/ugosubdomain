server {
    # port you are listening to (http :80, https: 443)
    listen 80;

    root /var/www/oxm/subdomain;
    # root is the location of your web static content

    # Add index.php to the list if you are using PHP
    index index.html index.htm index.php;

    server_name ip;

    location / {
            # First attempt to serve request as file, then
            # as directory, then fall back to displaying a 404.
            try_files $uri $uri/ =404;
    }

}