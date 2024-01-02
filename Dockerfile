# FROM docker.io/library/httpd:2.4
FROM registry.access.redhat.com/rhscl/httpd-24-rhel7
COPY ./public-html/ /usr/local/apache2/htdocs/
