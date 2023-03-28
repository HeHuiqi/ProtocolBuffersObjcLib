# ProtocolBuffersObjcLib

ProtocolBufferObjc静态库，支持3.21.12版本

## 一个例子
`user.proto` 文件内容
```
syntax = "proto2";
message User {
  optional string name = 1;
  optional int32 id = 2;
  optional string email = 3;
}
```

安装 `protobuf`在Mac OS下使用 `brew install protobuf` 

开始生成代码,
```
protoc  user.proto   --objc_out=.
```

## 修改生成的`.h`和`.m`的头文件
`User.pbobjc.h`文件修改如下

```

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
// #import "GPBProtocolBuffers.h"
#import <ProtocolBuffersObjcLib/GPBProtocolBuffers.h>
#endif

```

`User.pbobjc.m`文件修改如下
```

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
// #import "GPBProtocolBuffers_RuntimeSupport.h"
#import <ProtocolBuffersObjcLib/GPBProtocolBuffers_RuntimeSupport.h>

#endif

```
## 添加Resource目录下`ProtocolBuffers.a`文件
