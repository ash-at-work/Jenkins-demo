FROM docker.io/library/httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
