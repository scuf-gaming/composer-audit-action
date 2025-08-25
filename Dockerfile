FROM composer:latest

COPY entrypoint.sh /entrypoint.sh
COPY jsonToOutput.php /jsonToOutput.php

RUN git config --global --add safe.directory /github/workspace

ENTRYPOINT ["/entrypoint.sh"]
