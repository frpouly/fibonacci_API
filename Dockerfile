# Dockerfile

FROM ruby:2.7.0

WORKDIR /code
COPY . /code
RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "3000"]