FROM ruby:2.1

WORKDIR /usr/share

COPY Gemfile Gemfile.lock ./

RUN apt-get update

RUN apt-get -y install nodejs

RUN bundle install

COPY . .

CMD ["bash","deploy.sh"]