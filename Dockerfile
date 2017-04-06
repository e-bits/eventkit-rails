FROM ruby:2.1.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /eventkit
WORKDIR /eventkit
ADD Gemfile /eventkit/Gemfile
ADD Gemfile.lock /eventkit/Gemfile.lock
RUN bundle install
ADD . /eventkit
