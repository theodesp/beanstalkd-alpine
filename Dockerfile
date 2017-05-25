FROM alpine:3.5

RUN apk update
RUN apk --no-cache add beanstalkd && rm -rf /var/cache/apk/*

VOLUME ["/data"]
EXPOSE 11300

CMD ["/usr/bin/beanstalkd", "-f", "60000", "-b", "/data"]