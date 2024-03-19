# readme

## Install Ruby

### Check
```bash
# ruby   
$ ruby --version # ruby 3.1.3
# gem
$ gem --version # 3.3
# bundler
$ bundler -v # Bundler version 2.3
```

^install if no - https://jekyllrb.com/docs/installation/

### Installation

```bash
$ gem install --user-install bundler jekyll
# Append your path file with the following
$ echo 'export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"' >> ~/.zshrc
$ echo 'export PATH="$HOME/.gem/ruby/3.3.0/bin:$PATH"' >> ~/.zshrc
$ bundle install
```

### Fix for system Ruby on macOS
```bash
# tool for simple Ruby version management
$ brew install rbenv ruby-build
$ rbenv install 3.1.2
$ rbenv global 3.1.2
# rbenv help - https://github.com/rbenv/rbenv#how-rbenv-hooks-into-your-shell
```

## Run

```bash
$ bundle exec jekyll serve
```