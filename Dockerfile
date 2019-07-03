FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ENV APP_HOME /danielpariente
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/
COPY components/blog /$APP_HOME/components/blog
RUN bundle install

COPY . $APP_HOME

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD bundle exec rails s -p ${PORT} -b '0.0.0.0'
