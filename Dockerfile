FROM ruby:2.6.2
RUN apt-get update && apt-get install -y \ 
  build-essential zip

RUN mkdir -p /app 
WORKDIR /app

ADD Gemfile* /app/
RUN gem install bundler --pre
RUN bundle install

ADD . /app
