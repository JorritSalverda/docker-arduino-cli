FROM debian:buster-slim

ARG ARDUINO_CLI_VERSION=0.18.3

RUN apt-get update && apt-get install -y \
      curl \
    && rm -rf /var/lib/apt/lists/* \
    && curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=/usr/local/bin sh -s ${ARDUINO_CLI_VERSION} \
    && arduino-cli core install arduino:avr