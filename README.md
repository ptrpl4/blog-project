# Readme

## Components

### Theme

Current theme - [PaperMod](https://github.com/adityatelange/hugo-PaperMod)

```shell
# add existing version
git submodule update --init --recursive
# update to last version
git submodule update --remote --merge
```

## Hugo

### Hugo Version

- Last checked Hugo version - v0.146.7
- Latest hugo [releases](https://github.com/gohugoio/hugo/releases)

Places to check (in case of update):

- .github/workflows/hugo.yaml
- Makefile
- README.md

### Local

```shell
brew install hugo
hugo server
```

### Docker

```shell
make build_hugo

make run

make run_dev # drafts mode

make new-post POST=my-new-article # create post (date=today)
```

## Content Management

```shell
hugo new content posts/2025-12-30-new-letters.md
hugo server --buildDrafts
```

## Helpers

### Docs and examples

- theme [wiki](https://github.com/adityatelange/hugo-PaperMod/wiki)
- hugo [docs](https://gohugo.io/documentation/)
