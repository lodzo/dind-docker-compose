FROM docker:stable
RUN apk add --no-cache curl bash
RUN apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make \
	&& pip install docker-compose \
	docker-compose --version

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]
