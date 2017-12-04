PROJECT_PATH=$(shell pwd)
IMAGE=jekyll/jekyll:latest
CONTAINER_NAME=rotaract-4540-institutional

.PHONY: serve
serve:
	docker run \
		--name ${CONTAINER_NAME} \
		--volume ${PROJECT_PATH}:/srv/jekyll \
		--publish 4000:4000 \
		--interactive \
		--tty \
		--rm \
		${IMAGE} \
		jekyll serve --watch
