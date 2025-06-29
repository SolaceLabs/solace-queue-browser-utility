FROM alpine:latest

RUN apk add --no-cache lighttpd curl bash openssl

# Create directory structure
RUN mkdir -p /www/solace /certs /etc/lighttpd/ /usr/local/bin

# Copy start script
COPY start.sh /usr/local/bin/start.sh

# Copy your CGI script
#COPY proxy.sh /www/solace/proxy.sh
#RUN chmod +x /www/solace/proxy.sh

# Start the server
CMD ["/usr/local/bin/start.sh"]
