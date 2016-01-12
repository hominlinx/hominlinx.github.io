#### Using Markdown to writing blog, and the bolg engine is [Octopress](http://octopress.org/doc)...

 使用octopress和github管理blog，需要懂一点点ruby，并且使用过github，懂一些git命令，用markdown来写文章。在一个新的linux机子上需要搭建这个环境，搭建ok后只需要几个命令就可以生成一个文章，然后编写blog，最后也是使用几个命令就可以预览/发布所写的blog。

------

#####在linux机子上安装ruby，搭建octopress环境。

1. `sudo apt-get install ruby-dev`
2. `sudo bundle install`
3. `bundle install`

这样环境就搭建了，其中或许遇到各种问题，google就ok了。

------

#####仓库说明，环境恢复 在一台新的机子下载源文件，写blog，提交blog。

我在github上分为master和site分支，除`_deploy`目录外的文件上传到site分支。`_deploy`目录内容上传到master分支上。

* `git clone -b site git@github.com:hominlinx/hominlinx.github.io.git octopress` #把site分支克隆到本地octopress目录上
* `cd octopress`
* `git clone -b master git@github.com:hominlinx/hominlinx.github.io.git _deploy` #克隆master分支，它存放着博客内容
* `gem install bundler`
* `bundle install`
* `rake install`
* `rake setup_github_pages`

------

#####使用octopress

* rake new_post["tilename"]  #创建新文章
* rake generate #生成静态文件
* rake preview #[本地浏览:](http:127.0.0.1:4000)
* rake deploy #发布(部署)

------

#####使用markdown

如何使用markdown可以参考[Cmd Markdown](https://www.zybuluo.com/mdeditor/note/1317)

------

####将文章上传到github

* `git add .`
* `git commit -m "add source post"`
* `git push origin site`


-----

可以使用`run.sh` 脚本。

