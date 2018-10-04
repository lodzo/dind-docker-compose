FROM docker:stable

RUN apk add --update python py-pip \
    && pip install docker-compose \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
