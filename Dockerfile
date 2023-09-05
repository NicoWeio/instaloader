FROM python:3.11

ENV IS_DOCKER Yes

WORKDIR /app

# WARNING: This means that we install the PyPI version, not whatever this repo contains!
RUN pip3 install instaloader

WORKDIR /data

ENTRYPOINT ["python3", "-m", "instaloader"]
