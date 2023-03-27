
out_dir=ProtocolBuffersObjcLib
if [ ! -d ${out_dir} ]; then
    mkdir ${out_dir}
fi
header_dir=include
if [ ! -d "${out_dir}/${header_dir}" ]; then
    mkdir "${out_dir}/${header_dir}"
fi
cp ./objectivec/*.h "${out_dir}/${header_dir}"
cp ./objectivec/google/protobuf/*.pbobjc.h "${out_dir}/${header_dir}"


# xcodebuild  -project ./objectivec/ProtocolBuffers_iOS.xcodeproj \
#     -scheme ProtocolBuffers \
#     -sdk iphoneos \
#     BUILD_DIR="../${out_dir}/libs"

xcodebuild  -project ./objectivec/ProtocolBuffers_iOS.xcodeproj \
    -scheme ProtocolBuffers \
    -sdk iphonesimulator \
    BUILD_DIR="../${out_dir}/libs"

# lipo -create ./${out_dir}/libs/Debug-iphoneos/libProtocolBuffers.a ./${out_dir}/libs/Debug-iphonesimulator/libProtocolBuffers.a \
#     -output ./${out_dir}/ProtocolBuffers.a

cp ./${out_dir}/libs/Debug-iphonesimulator/libProtocolBuffers.a ./${out_dir}/ProtocolBuffers.a

rm -rf  ./${out_dir}/libs