FROM ruby:3.4

WORKDIR /app

COPY . .

RUN bundle install

EXPOSE 4567

CMD ["rackup", "--host", "0.0.0.0", "--port", "4567"]
