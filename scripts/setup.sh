#!/bin/zsh

# 1.使用rbenv管理工具安装ruby
ruby_version=`cat .ruby-version`
if [[ ! -d "$HOME/.rbenv/versions/$ruby_version" ]]; then
  rbenv install $ruby_version;
  rbenv init
fi

# 2.安装 bunlder
gem install bundler

# 3.安装 gem工具
bundle install

# 4.安装 pod库
bundle exec pod install

# 5.创建别名 
# 会影响其他项目先暂时隐藏
#. ~/.zshrc && [ `alias | grep "pod" | wc -l` = 0 ] && echo 'alias pod="bundle exec pod"' >> $HOME/.zshrc && . ~/.zshrc
