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

