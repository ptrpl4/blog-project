HUGO_VERSION ?= 0.152.2
IMAGE_NAME ?= my-hugo-image

DOCKER ?= podman

build_hugo:
	$(DOCKER) build -t $(IMAGE_NAME) --build-arg HUGO_VERSION=$(HUGO_VERSION) .

run:
	$(DOCKER) run --rm -p 1313:1313 -v $(PWD):/src $(IMAGE_NAME)

run_dev:
	$(DOCKER) run --rm -p 1313:1313 -v $(PWD):/src $(IMAGE_NAME) hugo server --bind 0.0.0.0 --buildDrafts --buildFuture

shell:
	$(DOCKER) run --rm -it -v $(PWD):/src my-hugo-image sh

new_post_ru:
	$(DOCKER) run --rm -v $(PWD):/src $(IMAGE_NAME) hugo new content/ru/posts/`date +%Y-%m-%d`-$(POST).md

new_post_en:
	$(DOCKER) run --rm -v $(PWD):/src $(IMAGE_NAME) hugo new content/en/posts/`date +%Y-%m-%d`-$(POST).md

clean:
	$(DOCKER) rmi $(IMAGE_NAME) 2>/dev/null || true
