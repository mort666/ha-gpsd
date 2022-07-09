FROM alpine:latest

RUN apk update && apk upgrade && apk add gpsd gpsd-clients bash

EXPOSE 2947

CMD ["/usr/sbin/gpsd", "-D2", "-F", "/var/run/gpsd.sock", "-G", "-N", "-n", "/dev/ttyACM0"]
