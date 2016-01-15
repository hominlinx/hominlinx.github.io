---
layout: post
title: "Cmake命令说明"
date: 2013-12-22 10:19
comments: true
categories: cmake
tags: [技术, makefile]
---

cmake 是生成makefile（类unix平台）的一个tool，里面包含了各种命令，具体可以参考[cmake 命令](https://cmake.org/cmake/help/v2.8.10/cmake.html#section_Commands)，

<!--more-->


------------


由于最近学习ogre，而ogre的组织采用cmake编译生成makefile，一直想好好学习cmake，但是cmake的命令一直记不住，所以在这里记录了经常使用的几个命令。
cmake可以编译生成动态库，静态库，可执行文件。cmake主要是创建CMakLists.txt。

一个CMakeLists.txt的例子：
```
#demo build
PROJECT(OgreDemo)

set(CMAKE_MODULE_PATH "/usr/local/lib/OGRE/cmake;${CMAKE_MODULE_PATH}")
set(OGRE_SAMPLES_INCLUDEPATH "/usr/local/share/OGRE/samples/Common/include/")

find_package(OGRE REQUIRED)
find_package(OIS REQUIRED)

set(HDRS ./EnvMapping.h)
set(SRCS ./EnvMapping.cpp)
include_directories( ${OIS_INCLUDE_DIRS}
            ${OGRE_INCLUDE_DIRS}
            ${OGRE_SAMPLES_INCLUDEPATH}
            )

add_executable(OgreDemo ${HDRS} ${SRCS})
target_link_libraries(OgreDemo ${OGRE_LIBRARIES} ${OIS_LIBRARIES})
file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/dist/bin)
file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/dist/media)
Message("Hominlinx-->${PROJECT_BINARY_DIR}\n")
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/dist/bin)
``` 
里面主要包含了Cmake的变量，cmake命令等。
```bash
project(projectname) #这个执行是用来定义工程的名称。这个指令也隐含了两个cmake变量：<projectname>_binary_dir以及<projectname>_source_dir,这两个变量指的是当前工程的路径。
set(SRCS XXX) #设置变量
include_directories() #指定文件的搜索路径，相当于gcc的-I参数
add_subdirectory() #包含子目录
add_executable() #编译可执行程序，指定编译
target_link_libraries() #指定链接库
```
