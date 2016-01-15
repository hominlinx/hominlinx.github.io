---
layout: post
title: "my vim 设置"
date: 2013-10-13 12:29
comments: true
categories: Vim 
---

现在我基本上在linux下基本使用Vim作为我的编辑器，所以，我写了这个blog去说明我的Vim配置，所有的配置都可以在我的[vimrc](https://github.com/hominlinx/vim)。我主要在C++/python/ruby/golang中使用vim,故配置主要涉及到这几种语言。

<!--more-->

### 快捷键

```
<C-j> <C-k> <C-h> <C-l> 多窗口移动
H 移动到行的最前端
L 移动到行的最末端
<C-e> <C-y> 移动屏幕
F2 开启或关闭行号显示
F3 开启或关闭不可见字符
F4 开启或关闭换行功能（默认开启）
F5 激活或取消paste模式
F6 激活或取消语法高亮
kj <Esc>,不用去角落里面找esc了
t 在normal模式下，将光标所在行下移一行
T 在normal模式下，将光标所在行上移一行
，p 启动文件搜索功能（使用了插件Ctrlp）
,,f+字符 快速移动（使用了easymotion）
,cc 加上注释 ,cu 解开注释
,gd 代码跳转到声明位置（YCM）
,a= 按照等号切分格式化
，a: 按照逗号切分格式化
，rp 启动tmux
，vc 关闭vimux
```
<!--more-->

####插件
#####1. YCM
应当说使用vim写C++的程序员都应该使用的一款插件，但这个插件需要编译，并且自己的vim版本要高一点，现在可以使用Vim7.4了，Vim要有python的支持。具体可以参见我的[vimrc的readme](https://github.com/hominlinx/vim/blob/master/README.md),要想在大的工程里面可以自动补全自己的库，需要修改自己的`.ycm_extra_conf.py`里面的flags。

####2. UltiSnips
这个插件可以快速插入代码片段。可以参见[官方介绍](https://github.com/SirVer/ultisnips)

####3. Nerdcommenter
快速的加减注释，这在写C++代码中还是使用频率比较高的一个插件，shift+v+方向键选中，使用`,cc`加注释，`,cu`去除注释。相关解释请看:[Nerdcommenter](https://github.com/scrooloose/nerdcommenter)

####4. minibufexpl
该插件是Vim的buffer管理。`<Tab>`切换buffer，`，bn`切到后一个,`,bp`切到前一个,`,bd`关闭当前buffer。相关解释请看：[minibufexpl](https://github.com/fholgado/minibufexpl.vim)

####5. 插件小结

由于使用的插件较多，所以没有全部列出，其实插件不必多，在于使用这个插件的频率要高

###Vim tip
vim 奉行的是少用鼠标，这个在使用vim的刚开始可能比较哭逼，但坚持就好。并且多多使用，这就是vim 的tips。



