# Small base from alpine.
FROM python:alpine

# Install magic-wormhole
RUN apk update && apk upgrade && \
	apk add musl-dev libffi-dev libressl-dev gcc make && \
	pip install magic-wormhole && \
	apk del musl-dev libffi-dev libressl-dev gcc make 
