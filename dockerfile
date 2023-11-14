from python:3.9-slim

COPY . /soco_cli

RUN pip install ./soco_cli

CMD ["/usr/local/bin/sonos-http-api-server"]