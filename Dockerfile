FROM ubuntu:trusty

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential ruby ruby-dev nodejs nginx
RUN gem install jekyll --no-ri --no-rdoc

