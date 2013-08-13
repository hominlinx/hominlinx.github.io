---
layout: post
title: "内存系列0"
date: 2013-08-10 10:26
comments: true
categories: 
---

   内存在嵌入式开发中占据了很重要的地位，现在很多开源将malloc改为tcmalloc或jemalloc
，所以我这个系列将慢慢研究一下内存的知识，声明：**这些都来自网络，并反馈于网络**

<!--more-->

1. 内存模型

	- 单线程and 多线程

2. 堆栈

	- malloc/free

3. 全局内存

	- .bss 

	- .data

	- .rodata

	- violatile

	- static

	- const

4. 内存分配算法

	- glibc

	- STL

OS内部分配算法

5. 设计到开源库

	- tcmalloc 
	- jemalloc

###参考
- [tcmalloc](http://dirlt.com/tcmalloc.html)
- [tcmalloc学习笔记](http://blog.csdn.net/littletigerat/article/details/7738731)
- [jemalloc源码分析](http://blog.csdn.net/romandion/article/details/8926252)
