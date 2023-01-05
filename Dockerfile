# syntax=docker/dockerfile:1
FROM ruby:3.1.3-slim
RUN apt-get update -qq && apt-get install -y build-essential
RUN apt remove cmdtest -y
WORKDIR /CC
COPY Gemfile /CC/Gemfile
COPY Gemfile.lock /CC/Gemfile.lock
COPY . /CC/
RUN bundle install

CMD ["rake", "test"]