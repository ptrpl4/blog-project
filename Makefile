build_hugo:
	docker build -t my-hugo-image --build-arg HUGO_VERSION=0.146.7 .

run:
	docker run -p 1313:1313 -v $(PWD):/src my-hugo-image

dev:
	docker run -p 1313:1313 -v $(PWD):/src my-hugo-image hugo server --bind 0.0.0.0 --buildDrafts

shell:
	docker run -it -v $(PWD):/src my-hugo-image /bin/sh

new-post:
	docker run -v $(PWD):/src my-hugo-image hugo new content posts/`date +%Y-%m-%d`-$(POST).md
