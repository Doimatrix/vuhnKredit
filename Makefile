
TAG := development
IMAGE := cusspvz/autotune

test: build
	@docker run \
		--rm -ti \
		--env docker_remove_containers=0 \