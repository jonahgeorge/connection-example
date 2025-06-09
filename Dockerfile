FROM ruby:3.2.0-slim AS base
WORKDIR /app

RUN apt-get update && apt-get install --no-install-recommends -y \
  build-essential \
  freetds-dev \
  git \
  freetds-bin \
  libjemalloc2 \
  libvips \
  node-gyp \
  pkg-config \
  python-is-python3 \ 
  unzip

COPY . . 
RUN bundle install

ENTRYPOINT ["bundle", "exec", "ruby", "main.rb"]
