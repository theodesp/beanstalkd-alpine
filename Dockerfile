FROM alpine:3.5

RUN apk update
RUN apk --no-cache add beanstalkd supervisor && rm -rf /var/cache/apk/*
ADD beanstalkd.conf /etc/supervisor/conf.d/beanstalkd.conf

VOLUME ["/data"]
EXPOSE 11300

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/conf.d/beanstalkd.conf"]