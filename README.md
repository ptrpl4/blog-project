# readme

## Install

### Check

ruby
`ruby --version`
gem
`gem --version`
bundler
`bundler -v`

^install if no

### Installation

```bash
$ gem install --user-install bundler jekyll
# Append your path file with the following
$ echo 'export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"' >> ~/.zshrc
$ echo 'export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"' >> ~/.zshrc
$ bundle install
$ bundle exec jekyll serve
```

## Run

`$ bundle exec jekyll serve`

## Use

### Structure

.
├── 404.html
├── Gemfile
├── Gemfile.lock
├── README.md
├── _config.yml
├── _posts
│   ├── 2019-12-23-top-2019.md
├── _site
│   ├── 2019
│   │   └── 12
│   │       ├── 23
│   │       │   ├── top-2019.html
│   ├── 404.html
│   ├── README.md
│   ├── assets
│   │   ├── ???
│   ├── favicon.ico
│   ├── feed.xml
│   ├── index.html
│   └── jekyll
│       └── ???
├── assets
│   ├── css
│   ├── images
│   ├── js
├── favicon.ico
└── index.markdown