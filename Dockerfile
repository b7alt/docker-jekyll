FROM ubuntu:trusty
MAINTAINER troyswanson <gerphimum@gmail.com>

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential nginx && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install python ruby ruby-dev nodejs && \
  apt-get clean && \
  gem install jekyll --no-ri --no-rdoc

ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-enabled/default

CMD ["nginx"]

EXPOSE 80
