# Demo-Xcode-github

Install Ruby On Rails on macOS 11 Big Sur
https://gorails.com/setup/osx/11-big-sur
https://ruby-china.org/wiki/rbenv-guide
https://gems.ruby-china.com

1. 安装homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

2.安装ruby

brew install rbenv ruby-build

 vim   ~/.zshrc 

#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source ~/.zshrc

rbenv versions 

rbenv install 3.1.2

ruby -v


1.rbenv 
2.fastlane 
3.cocopods
4.xcode cloud
