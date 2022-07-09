FROM alpine:latest

RUN apk update && apk upgrade && apk add gpsd gpsd-clients bash python3 py3-pip python3-dev python3-dbg py3-gpsd gpsd-dev

EXPOSE 2947

CMD ["/usr/sbin/gpsd", "-D2", "-F", "/var/run/gpsd.sock", "-G", "-N", "-n", "/dev/ttyACM0"]
