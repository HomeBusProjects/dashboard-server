FROM ruby:2.6.2

RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y build-essential zip nodejs yarn libpq-dev

RUN mkdir -p /app 
WORKDIR /app

ADD Gemfile* /app/
RUN gem install bundler --pre
RUN bundle install

ADD . /app
