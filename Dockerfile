FROM ubuntu:trusty
MAINTAINER troyswanson <gerphimum@gmail.com>

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install ruby ruby-dev nodejs nginx && \
  apt-get clean && \
  gem install jekyll --no-ri --no-rdoc

ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-enabled/default

CMD ["nginx"]

EXPOSE 80
