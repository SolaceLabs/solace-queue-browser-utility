FROM busybox
WORKDIR /www
CMD ["httpd", "-f", "-p", "8080"]
