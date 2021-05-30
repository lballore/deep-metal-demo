BASE_DIR := $(CURDIR)
DOCKER_IMAGE_DEMO := deep-metal-demo
DOCKER_IMAGE_DEMO_FRONTEND := deep-metal-demo-frontend
DOCKER_IMAGE_DEMO_TESTS := deep-metal-demo-test
GROUP_ID := 1000
USER_ID := 1000


.PHONY: demo-build
demo-build:
	docker build --rm -f docker/local.dockerfile \
		--build-arg WORKING_ENV=dev \
		--target demo-main \
		-t $(DOCKER_IMAGE_DEMO) .


.PHONY: demo-run
demo-run:
	docker run --rm -it -p 80:80 \
		--env TOKENIZERS_PARALLELISM=true \
		$(DOCKER_IMAGE_DEMO)


.PHONY: demo-bash
demo-bash:
	docker run --rm -it -p 80:80 \
		$(DOCKER_IMAGE_DEMO) /bin/bash


.PHONY: demo-frontend-build
demo-frontend-build:
	docker build --no-cache --rm -f docker/local.dockerfile \
		--target frontend-builder \
		-t $(DOCKER_IMAGE_DEMO_FRONTEND) .

.PHONY: demo-frontend-bash
demo-frontend-bash:
	docker run --rm -it -p 80:5000 \
		$(DOCKER_IMAGE_DEMO_FRONTEND) /bin/sh


.PHONY: demo-tests-build
demo-tests-build:
	docker build --rm -f docker/test.dockerfile \
	--target test \
		-t $(DOCKER_IMAGE_DEMO_TESTS) .

.PHONY: demo-tests-run
demo-tests-run:
	docker run --rm -it \
		$(DOCKER_IMAGE_DEMO_TESTS)
