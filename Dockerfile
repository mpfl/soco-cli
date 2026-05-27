FROM python:3.13-slim

COPY requirements.txt pyproject.toml setup.cfg /soco_cli/
RUN pip install --no-cache-dir -r /soco_cli/requirements.txt

COPY soco_cli/ /soco_cli/soco_cli/
COPY docker/ /soco_cli/docker/
RUN pip install --no-cache-dir --no-deps /soco_cli

ENV SC_PORT=8000
ENV SC_SUBNETS=192.168.1.0/24

VOLUME ["/macros"]

CMD ["/soco_cli/docker/entrypoint.sh"]

LABEL org.opencontainers.image.description="HTTP API to control local Sonos system"
