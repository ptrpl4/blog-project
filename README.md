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