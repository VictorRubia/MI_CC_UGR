# syntax=docker/dockerfile:1
FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential npm yarn nodejs
RUN apt remove cmdtest -y
RUN npm install -g npm@latest
RUN npm install -g yarn
WORKDIR /CC
COPY Gemfile /CC/Gemfile
COPY Gemfile.lock /CC/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]