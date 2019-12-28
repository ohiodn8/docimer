FROM ruby:2.5-alpine3.10
RUN apk add --no-cache git ruby-dev build-base libxml2-dev libxslt-dev libffi-dev tzdata nodejs libpq5 libpq-dev libpq postgresql-client
RUN git clone https://github.com//ohiodn8/docimer /docimer
WORKDIR /docimer
RUN rm -rf Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /docimer

RUN bundle exec rails assets:precompile
RUN apk del git ruby-dev build-base libxml2-dev libxslt-dev libffi-dev nodejs postgresql-client
EXPOSE 3000
ENTRYPOINT ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
