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
hugo new content posts/new-letters.md
hugo server --buildDrafts
```