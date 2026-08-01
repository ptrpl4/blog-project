# wtf-is-going-on

Personal blog. Hugo + [PaperMod](https://github.com/adityatelange/hugo-PaperMod), bilingual (en/ru), deployed to GitHub Pages on every push to `main`.

Live at **<https://ptrpl4.github.io/blog-project/>**

## Setup

```shell
git submodule update --init --recursive   # theme
make build_hugo                           # local Hugo image
```

## Serve

```shell
make run       # published content
make run_dev   # + drafts and future-dated posts
```

Both listen on <http://localhost:1313>. Without podman, `brew install hugo` and use `hugo server` / `hugo server --buildDrafts`.

## Write

Posts are page bundles under `content/{en,ru}/posts/` — one folder per post, images alongside the text:

```shell
hugo new content/en/posts/$(date +%F)-some-slug/index.md
```

Drafts live in `content/{en,ru}/posts/drafts/`. Flip `draft: false` to publish.

## Versions

`.env` is the single source of truth for `HUGO_VERSION` and `ALPINE_VERSION`, consumed by both the Makefile and CI. A bare `podman build` (without `make`) must pass them explicitly:

```shell
podman build \
  --build-arg HUGO_VERSION=$(. ./.env && echo $HUGO_VERSION) \
  --build-arg ALPINE_VERSION=$(. ./.env && echo $ALPINE_VERSION) \
  -t my-hugo-image .
```

Upgrade the theme with `git submodule update --remote --merge`.
