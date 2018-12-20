FROM "alpine:latest"

LABEL maintainer="erdem.erdembircan@gmail.com"

RUN apk add --update curl mysql-client

RUN curl -X GET https://resources.oreilly.com/examples/9780596007270/raw/master/LearningSQLExample.sql -o bank.sql

COPY config_entrypoint.sh .

RUN chmod +x config_entrypoint.sh

ENTRYPOINT ./config_entrypoint.sh
