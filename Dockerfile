FROM debian:jessie-slim

MAINTAINER (https://github.com/mlinarik/aircrack-ng)

RUN apt-get update && \
  apt-get install -y aircrack-ng && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["aircrack-ng"]
CMD ["--help"]
