FROM ruby:2.3.8-slim-stretch

MAINTAINER didlich@t-online.de

RUN apt update && \
    apt install -y git ruby-dev make gcc g++ libpq-dev

# install things globally, for great justice
# and don't create ".bundle" in all our apps
RUN gem -a -x uninstall bundler && gem install bundler --version=1.14.5

WORKDIR /usr/src/app