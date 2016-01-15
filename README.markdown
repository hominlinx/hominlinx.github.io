#### Using Markdown to writing blog

 使用Hexo和github Pages 管理blog，需要懂一些git命令，用markdown来写文章。在一个新的linux机子上需要搭建这个环境，搭建ok后只需要几个命令就可以生成一个文章，然后编写blog，最后也是使用几个命令就可以预览/发布所写的blog。

------

#####在linux机子搭建Hexo

安装Hexo相当简单，在安装之前，`Node.js` `Git` 必须安装。使用`npm` 既可以完成安装。注意`npm`可能在国内不容易访问，可以[参考](http://yijiebuyi.com/blog/b12eac891cdc5f0dff127ae18dc386d4.html)

```
$ npm install -g hexo-cli

```

这样环境就搭建了，其中或许遇到各种问题，google就ok了。

------

##### 使用Hexo建站

安装完毕后就可以使用了。并假设blog代码已经下载了。使用`npm install` 安装依赖包。

```
$hexo g
$hexo s

```

可以在本地浏览器里面看。

----------

#### 添加新文章

打开Hexo目录下的source文件夹，所有的文章都会以md的形式保存在`_post`文件夹中，只要在这个文件夹中新建md类型的文档，就能执行`hexo g` 的时候渲染。
新建文档需要添加一些yml信息，如下：

```
title: hello-world   //在此处添加你的标题。
date: 2014-11-7 08:55:29   //在此处输入你编辑这篇文章的时间。
categories: Exercise   //在此处输入这篇文章的分类。
toc: true  //在此处设定是否开启目录，需要主题支持。

```

`$hexo n [layout] "postNmae"` 也是新建文章，其中layout是可选参数，默认是post。有哪些layout呢？可以到scaffolds下面查看，这些文件名就是layout的名称。当然可以添加自己的layout，方法就是添加一个文件而已，同时你也可以编辑现有的layout，比如post的layout默认是hexo\scaffolds\post.md

```
title: { { title } }
date: { { date } }
tags:
---

```
** 请注意，大括号与大括号之间我多加了个空格，否则会被转义，不能正常显示。**

我修改为：

```
layout: post
title: { { title } } #文章页面上的显示名称，可以任意修改，不会出现在URL中
date: { { date } } # 文章生成时间，一般不改，当然也可以任意修改
update: { { date } } #文章更新时间
comment: true
categorite: [  ] # 文章分类目录，可以为空，注意:后面有个空格
tags: [  ] # 文章标签，可空，多标签请用格式[tag1,tag2,tag3]，注意:后面有个空格
toc: true  #在此处设定是否开启目录，需要主题支持。
original:
permallink: #永久链接， 出现在URL中
fancybox:
---

---------
main body.

```


---------

#### 更新文章

Hexo的文章源文件就是一个个的markdown文本，备份在github上面，可以将这些备份关联到主题上，这样在文章文末，可以很方便的跳转查看文章更新记录，历史版本以及下载源文件。 [参考](http://moxfive.xyz/2016/01/10/hexo-post-version-control/)



---------

#### 常用命令

以下是常用命令：

```
$ hexo new [layout] <title>     #建立新文章，默认在_posts下，layout="draft"时发布的是草稿
$ hexo publish <filename>       #将_drafts下的文件放到_posts下，也就是发布草稿
$ hexo generate                 #生成静态网页
$ hexo server                   #启动预览服务器，开启-d选项时可以预览草稿
$ hexo deploy                   #发布到远程服务器，开启--generate选项可以在deploy前自动generate</filename></title>

```

----------


#####仓库说明，环境恢复 在一台新的机子下载源文件，写blog，提交blog。

我在github上分为master和hexo分支.

* `git clone -b hexo git@github.com:hominlinx/hominlinx.github.io.git hexo` #把hexo分支克隆到本地hexo目录上
* `cd hexo`
* `hexo new "my new blog"` 写blog
* `hexo generate -d` 自动将push到master分支上面

------


#####使用markdown

如何使用markdown可以参考[Cmd Markdown](https://www.zybuluo.com/mdeditor/note/1317)

------

