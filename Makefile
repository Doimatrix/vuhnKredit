
TAG := development
IMAGE := cusspvz/autotune

test: build
	@docker run \