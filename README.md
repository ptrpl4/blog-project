# Readme

## Maintaining

### Theme

```shell
# theme update (more info - https://github.com/adityatelange/hugo-PaperMod)
git submodule update --remote --merge
```

## Run

Last checked Hugo version - v0.146.0

### Local

```shell
brew install hugo
hugo server
```

### Docker

```shell
make build_hugo

make run

make dev # drafts mode

make new POST=my-new-article # create post (date=today)
```

## Content Management

```shell
hugo new content posts/2025-12-30-new-letters.md
hugo server --buildDrafts
```

## Helpers

### Tools

- yaml-to-toml https://transform.tools/yaml-to-toml

### Docs and examples

- theme wiki https://github.com/adityatelange/hugo-PaperMod/wiki
- theme demo https://adityatelange.github.io/hugo-PaperMod/
  
### Snippets

#### post structure

```markdown
+++
title = 'Something From 2023'
summary = 'Noticable stuff'
date = 2024-07-09T20:43:53+08:00
draft = false
ShowToc = false
+++
```
