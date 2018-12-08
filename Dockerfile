FROM mexx/ruby-base:rpi
MAINTAINER Stanislav Mekhonoshin <ejabberd@gmail.com>

COPY . /app/
WORKDIR /app
RUN bundle install
EXPOSE 9292

ENTRYPOINT ["/app/entrypoint.sh"]
