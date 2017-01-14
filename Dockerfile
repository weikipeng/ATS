FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ats
WORKDIR /ats
ADD Gemfile /ats/Gemfile
ADD Gemfile.lock /ats/Gemfile.lock
RUN bundle install
ADD . /ats