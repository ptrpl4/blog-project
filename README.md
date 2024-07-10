# Readme

## Installation

```shell
# install hugo and git
brew install hugo git

# check current hugo info
git -v
hugo env
```

## Maintain

### Theme

```shell
# theme update (more info - https://github.com/adityatelange/hugo-PaperMod)
git submodule update --remote --merge
```

## Run

```shell
hugo server
```

## Content

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