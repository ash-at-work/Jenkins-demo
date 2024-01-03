FROM docker.io/library/httpd:2.4

# ARG http_proxy=http://host.docker.internal:3128
# ARG https_proxy=http://host.docker.internal:3128

ARG https_proxy=http://192.168.135.70:3828
ARG http_proxy=http://192.168.135.70:3828

# FROM registry.access.redhat.com/rhscl/httpd-24-rhel7
COPY ./public-html/ /usr/local/apache2/htdocs/
