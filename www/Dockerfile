# Base nginx image.
FROM docker.io/nginx:stable

# Configure web server.
RUN mkdir -p /srv/data
COPY default.conf /etc/nginx/conf.d/

# Start server.
COPY start.sh /
ENTRYPOINT [ "/start.sh" ]
