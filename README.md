# Demo-Xcode-github


[![Build Status](https://travis-ci.com/lagoueduCol/iOS-linyongjian.svg?branch=main)](https://travis-ci.com/lagoueduCol/iOS-linyongjian)
[![Language](https://img.shields.io/badge/language-Swift%205.3-orange.svg)](https://swift.org)
[![License](https://img.shields.io/github/license/lagoueduCol/moments-ios.svg?style=flat)](https://github.com/lagoueduCol/moments-ios/blob/main/LICENSE)

## 环境搭建

## 1.安装 [Homebrew](https://brew.sh/)

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
## 2.安装 [oh-my-zsh](https://ohmyz.sh/) 
```shell
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
## 3.安装 [zsh git 插件](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh)
```shell
$ brew install zsh-git-prompt
```
## 4.安装 [rbenv](https://github.com/rbenv/rbenv) - ruby版本管理工具

```shell
$ brew install rbenv ruby-build rbenv-vars
```
## 5.安装最新版Ruby

```shell
$ rbenv install --list
$ rbenv install 3.1.2 
$ rbenv local 3.1.2
```

After that, run the following commands to install all required components and set up the development environment:

```shell
$ ./scripts/setup.sh 
$ open Demo.xcworkspace 
```

### Automation GitLab Runner

If you'd like to run the automation steps on your local machine, make sure your create a file called `local.keys` and put all the keys in as below:

```
CI_BUILD_NUMBER=10 # Change it every time when running the build locally
APP_STORE_CONNECT_API_CONTENT=<App Store Connect API for an App Manager>
FIREBASE_API_TOKEN=<Firebase API token for App Distribution>
GITHUB_API_TOKEN=<GitHub API token for accessing the private repo for certificates and provisioning profiles>
MATCH_PASSWORD=<Password for certificates for App signing on GitHub private repo>
```

And run `$ source local.keys` After that, you can follow the steps in [.github-ci.yml]() to run the automations locally
