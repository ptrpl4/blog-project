include .env
export

IMAGE_NAME ?= my-hugo-image

DOCKER ?= podman

build_hugo:
	$(DOCKER) build -t $(IMAGE_NAME) \
		--build-arg HUGO_VERSION=$(HUGO_VERSION) \
		--build-arg ALPINE_VERSION=$(ALPINE_VERSION) .

run:
	$(DOCKER) run --rm -p 1313:1313 -v $(PWD):/src $(IMAGE_NAME)

run_dev:
	$(DOCKER) run --rm -p 1313:1313 -v $(PWD):/src $(IMAGE_NAME) hugo server --bind 0.0.0.0 --buildDrafts --buildFuture

shell:
	$(DOCKER) run --rm -it -v $(PWD):/src my-hugo-image sh

clean:
	rm -rf public resources .hugo_build.lock
	$(DOCKER) rmi $(IMAGE_NAME) 2>/dev/null || true

.PHONY: build_hugo run run_dev shell clean
