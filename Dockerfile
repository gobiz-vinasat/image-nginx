FROM nginx:1.15.12

RUN echo "deb http://deb.debian.org/debian stretch-backports main contrib non-free" >> /etc/apt/sources.list \
  && echo "deb-src http://deb.debian.org/debian stretch-backports main contrib non-free" >> /etc/apt/sources.list \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    certbot python-certbot-nginx -t stretch-backports \
  && rm -rf /var/lib/apt/lists/*