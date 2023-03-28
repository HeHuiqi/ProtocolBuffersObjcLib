
Pod::Spec.new do |spec|


  spec.name         = "ProtocolBuffersObjcLib"
  spec.version      = "3.21.12"
  spec.summary      = "protobuf objc static lib "

  spec.description  = "A protobuf objc static lib for ios "

  spec.homepage     = "https://github.com/HeHuiqi/ProtocolBuffersObjcLib.git"
 

  spec.license      = "https://github.com/HeHuiqi/ProtocolBuffersObjcLib/blob/main/LICENSE"

  spec.author             = { "HeHuiqi" => "1710308677@qq.com" }


  spec.ios.deployment_target = "16.0"

  spec.source       = { :git => "https://github.com/HeHuiqi/ProtocolBuffersObjcLib.git",:tag => spec.version  }

  spec.source_files  = "include/*.h"
  #spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "include/*.h"

  spec.resource  = "ProtocolBuffers.a"
  # spec.resources = "Resources/*.png"


end
