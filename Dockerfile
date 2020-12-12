FROM ruby:2.7.0

# Create app directory
ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# Install app dependencies
COPY Gemfile $APP_HOME
RUN bundle install

# Bundle app source
COPY . $APP_HOME

EXPOSE 3000
CMD ["bundle", "exec", "rackup"]