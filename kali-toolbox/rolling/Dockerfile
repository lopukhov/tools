FROM docker.io/kalilinux/kali-rolling

LABEL com.github.containers.toolbox="true" \
      com.github.debarshiray.toolbox="true" \
      name="kali-toolbox" \
      version="rolling" \
      usage="This image is meant to be used with the toolbox command" \
      summary="Base image for creating Kali Linux toolbox containers" \
      maintainer="lopukhov <lucas.mt.l@protonmail.com>"

COPY README.md /

# Install extra packages
COPY extra-packages /
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install $(<extra-packages)
RUN rm /extra-packages

# Allow authentication with empty password, promptless
RUN sed -i '/^auth.*pam_unix.so/s/nullok_secure/try_first_pass nullok/' /etc/pam.d/common-auth

RUN	touch /etc/machine-id

CMD /bin/sh
