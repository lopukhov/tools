# Base nginx image.
FROM docker.io/nginx:stable

# Update and install openssl for TLS.
RUN apt-get update && apt-get install -y openssl

# Configure web server.
RUN mkdir -p /etc/nginx/ssl && mkdir -p /srv/data
COPY default.conf /etc/nginx/conf.d/

# Start server.
COPY start.sh /
ENTRYPOINT [ "/start.sh" ]
