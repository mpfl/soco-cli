FROM python:3.9-slim

COPY . /soco_cli

RUN pip install ./soco_cli

ENV SC_PORT=8000
ENV SC_SUBNETS=192.168.1.0/24

VOLUME ["/macros"]

CMD ["/usr/local/bin/sonos-http-api-server"]
