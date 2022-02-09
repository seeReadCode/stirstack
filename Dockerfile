FROM thisismydesign/ruby-node-alpine:3.0.0-16.13.0-alpine

RUN apk add --no-cache graphviz git postgresql-dev libffi-dev build-base
RUN gem install bundler:'~>2.2.3'

WORKDIR /usr/src/app
RUN npm install --global --force yarn
ADD package.json /usr/src/app/package.json
ADD yarn.lock /usr/src/app/yarn.lock
RUN yarn install
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
RUN bundle install

ADD . usr/src/app

CMD ./docker-entrypoint.sh
