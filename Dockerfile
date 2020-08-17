FROM ruby:2.6

WORKDIR /site

COPY Gemfile /site/Gemfile
COPY Gemfile.lock /site/Gemfile.lock
RUN bundle install
COPY . /site

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--livereload-port", "4888"]