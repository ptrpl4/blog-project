HUGO_VERSION ?= 0.146.7
IMAGE_NAME ?= my-hugo-image

build_hugo:
	docker build -t $(IMAGE_NAME) --build-arg HUGO_VERSION=$(HUGO_VERSION) .

run:
	docker run --rm -p 1313:1313 -v $(PWD):/src $(IMAGE_NAME)

run_dev:
	docker run --rm -p 1313:1313 -v $(PWD):/src $(IMAGE_NAME) hugo server --bind 0.0.0.0 --buildDrafts --buildFuture

shell:
	docker run --rm -it -v $(PWD):/src my-hugo-image sh

new_post_ru:
	docker run --rm -v $(PWD):/src $(IMAGE_NAME) hugo new content/ru/posts/`date +%Y-%m-%d`-$(POST).md

new_post_en:
	docker run --rm -v $(PWD):/src $(IMAGE_NAME) hugo new content/en/posts/`date +%Y-%m-%d`-$(POST).md

clean:
	docker rmi $(IMAGE_NAME) 2>/dev/null || true
