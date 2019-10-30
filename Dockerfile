FROM arm32v7/ruby:2.4-stretch

RUN mkdir /code
ADD Gemfile* /code/
RUN gem install bundler && bundle install --full-index -j3 && gem cleanup
COPY . /code
