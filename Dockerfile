FROM ruby:2.5-alpine3.10
RUN apk --update add git ruby-dev build-base libxml2-dev libxslt-dev libffi-dev nodejs tzdata postgresql-dev postgresql-client imagemagick sqlite sqlite-dev
RUN git clone https://github.com//ohiodn8/docimer /docimer
WORKDIR /docimer
#RUN rm -rf Gemfile.lock
RUN gem install bundler
RUN bundle update bundler
RUN bundle install
COPY . /docimer

RUN bundle exec rails assets:precompile
EXPOSE 3000
ENTRYPOINT ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
