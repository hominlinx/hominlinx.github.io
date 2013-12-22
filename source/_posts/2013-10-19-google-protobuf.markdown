---
layout: post
title: "Google protobuf 的说明"
date: 2013-10-19 09:55
comments: true
categories: Google C++
---

进入公司后，发现公司的不同模块之间的数据传输是google的[protobuf](http://code.google.com/p/protobuf/)，所以用该博客去学习一下这个玩意。`Note：本文多源于网络`


Protocol Buffers are a way of encoding structured data in an efficient yet extensible format.这是一个序列化框架。

Protobuf 现在最新的是2.5，在[这里](http://code.google.com/p/protobuf/downloads/list)可以下载。

#### Protobuf如何工作

Protobuf使用`.proto`文件定义需要做串行化的数据结构信息。每一个ProtocolBuffer信息是一小段逻辑记录，包含一系列的键值对。  如：

{% codeblock lang:python %}

package tutorial;

message Person {
    required string name = 1;
    required int32 id = 2;
    optional string email = 3;

    enum PhoneType {
        MOBILE = 0;
        HOME;
        WORK;
    }

    message PhoneNumber {
        required string number = 1;
        optional PhoneType type = 2[default = HOME];
    }

    repeated PhoneNumber phone = 4;
}

message AddressBook {
    repeated Person person = 1;
}

{% endcodeblock %}

从上段代码中可以看到：

1. 字段类型：bool,int32,float,double,string,enum,自定义的类型
2. 消息嵌套
3. 字段前缀：required(必须的),optional(可选的),repeated(可重复的)
4. package为这个协议的命名空间
5. 可以通过`protoc --cpp_out=. message.proto`生成解析类。

计划使用Cmake将protoc集成进去。还有ProtoRPC,就是使用protobuf实现RPC(Remote Procedure Call Protocol--远程过程调用协议),这是一种通过网络从远程计算机程序上请求服务，而不需要了解底层的网络技术协议。



