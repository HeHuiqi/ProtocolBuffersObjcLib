# ProtocolBuffersObjcLib

ProtocolBufferObjc静态库，支持3.21.12版本

生成objc代码如下
```
```
修改.h和.m的头文件
```

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
// #import "GPBProtocolBuffers.h"
#import <ProtocolBuffersObjcLib/GPBProtocolBuffers.h>
#endif

```

User.pbobjc.m文件修改如下
```

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
// #import "GPBProtocolBuffers_RuntimeSupport.h"
#import <ProtocolBuffersObjcLib/GPBProtocolBuffers_RuntimeSupport.h>

#endif

```
添加ProtocolBuffers.a文件在其Resource目录下
