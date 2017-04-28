FROM ruby:2.1.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /eventkit
WORKDIR /eventkit
ADD . /eventkit
RUN gem update --no-document --system --quiet && bundle install && rake assets:precompile
