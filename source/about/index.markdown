---
layout: page
title: "About"
date: 2013-07-20 10:40
comments: true
sharing: true
footer: true
---
80后，生在山东，在南京读过书，目前在上海工作。。

学的物理电子，现在从事C++地图开发

喜欢linux，喜欢open source

喜欢Python/Ruby

想学web前端（个人爱好，与工作无关）

**Octopress** 帮助：

* rake new_post["tilename"]  创建新文章
* rake generate 生成静态文件
* rake preview [本地浏览:](http:127.0.0.1:4000)
* rake deploy 发布(部署)

## 将文章上传到github上
```
git add .
git commit -m "add soure post"
git push origin site(site 是本地的一个分支)
```
## 仓库说明
我在github上分为master和site分支，除_deploy目录外的文件上传到site分支。_deploy目录内容上传到master分支上。

##从新电脑上恢复博客内容
找的博客仓库的url，执行：
```
git clone -b site (url)octopress #把site分支克隆到本地octopress目录上
cd octopress
git clone (url) _deploy #克隆master分支，它存放着博客内容
gem install bundler
bundle install
rake install
rake setup_github_pages
```
## 您可以通过如下方式找到我：

**Gmail:** <hominlinx@gmail.com>

**Github:**[@hominlinx](https://github.com/hominlinx)

**新浪微博:**[@hominlinx](http://www.weibo.com/2442885697/profile?topnav=1&wvr=5)

