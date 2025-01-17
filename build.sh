#!/usr/bin/env bash
set -ex
cd "$(dirname "$0")"

if [ $# -eq 0 ]
  then
    echo "usage: [nodejs include/node path]"
    exit 1
fi

# npx node-gyp rebuild --verbose

rm -Rf build
mkdir -p build/Release/.deps/Release/obj.target/libargon2/argon2/src/
mkdir -p build/Release/obj.target/libargon2/argon2/src/
mkdir -p build/Release/.deps/Release/obj.target/libargon2/argon2/src/blake2/
mkdir -p build/Release/obj.target/libargon2/argon2/src/blake2/
mkdir -p build/Release/.deps/Release/obj.target/argon2/src/
mkdir -p build/Release/obj.target/argon2/src/
cd build
cc -o Release/obj.target/libargon2/argon2/src/opt.o ../argon2/src/opt.c '-D_FORTIFY_SOURCE=2' '-DNDEBUG' '-DNODE_GYP_MODULE_NAME=libargon2' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' -I../argon2/include -Wno-type-limits -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -msse -msse2 -fdata-sections -ffunction-sections -fvisibility=hidden -O3 -fno-omit-frame-pointer -c
  cc -o Release/obj.target/libargon2/argon2/src/argon2.o ../argon2/src/argon2.c '-D_FORTIFY_SOURCE=2' '-DNDEBUG' '-DNODE_GYP_MODULE_NAME=libargon2' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' -I../argon2/include  -Wno-type-limits -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -msse -msse2 -fdata-sections -ffunction-sections -fvisibility=hidden -O3 -fno-omit-frame-pointer -c
  cc -o Release/obj.target/libargon2/argon2/src/core.o ../argon2/src/core.c '-D_FORTIFY_SOURCE=2' '-DNDEBUG' '-DNODE_GYP_MODULE_NAME=libargon2' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' -I../argon2/include -Wno-type-limits -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -msse -msse2 -fdata-sections -ffunction-sections -fvisibility=hidden -O3 -fno-omit-frame-pointer -c
  cc -o Release/obj.target/libargon2/argon2/src/blake2/blake2b.o ../argon2/src/blake2/blake2b.c '-D_FORTIFY_SOURCE=2' '-DNDEBUG' '-DNODE_GYP_MODULE_NAME=libargon2' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' -I../argon2/include -Wno-type-limits -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -msse -msse2 -fdata-sections -ffunction-sections -fvisibility=hidden -O3 -fno-omit-frame-pointer -c
  cc -o Release/obj.target/libargon2/argon2/src/thread.o ../argon2/src/thread.c '-D_FORTIFY_SOURCE=2' '-DNDEBUG' '-DNODE_GYP_MODULE_NAME=libargon2' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' -I../argon2/include -Wno-type-limits -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -msse -msse2 -fdata-sections -ffunction-sections -fvisibility=hidden -O3 -fno-omit-frame-pointer -c
  cc -o Release/obj.target/libargon2/argon2/src/encoding.o ../argon2/src/encoding.c '-D_FORTIFY_SOURCE=2' '-DNDEBUG' '-DNODE_GYP_MODULE_NAME=libargon2' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' -I../argon2/include -Wno-type-limits -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -msse -msse2 -fdata-sections -ffunction-sections -fvisibility=hidden -O3 -fno-omit-frame-pointer -c
  rm -f Release/obj.target/argon2.a && ar crs Release/obj.target/argon2.a Release/obj.target/libargon2/argon2/src/opt.o Release/obj.target/libargon2/argon2/src/argon2.o Release/obj.target/libargon2/argon2/src/core.o Release/obj.target/libargon2/argon2/src/blake2/blake2b.o Release/obj.target/libargon2/argon2/src/thread.o Release/obj.target/libargon2/argon2/src/encoding.o
  ln -f "Release/obj.target/argon2.a" "Release/argon2.a" 2>/dev/null || (rm -rf "Release/argon2.a" && cp -af "Release/obj.target/argon2.a" "Release/argon2.a")
  g++ -o Release/obj.target/argon2/src/argon2_node.o ../src/argon2_node.cpp '-D_FORTIFY_SOURCE=2' '-DNDEBUG' '-DNODE_GYP_MODULE_NAME=argon2' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' '-DNAPI_VERSION=8' '-DBUILDING_NODE_EXTENSION' -I../argon2/include -I$1 -I$(dirname $(echo 'console.log(require.resolve("node-addon-api"))' | node -))  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -fdata-sections -ffunction-sections -fvisibility=hidden -O3 -fno-omit-frame-pointer -fno-rtti -std=gnu++17 -std=c++17 -c
  g++ -o Release/obj.target/argon2.node -shared -pthread -rdynamic -m64 -Wl,--gc-sections  -Wl,-soname=argon2.node -Wl,--start-group Release/obj.target/argon2/src/argon2_node.o Release/obj.target/argon2.a -Wl,--end-group 
  ln -f "Release/obj.target/argon2.node" "Release/argon2.node" 2>/dev/null || (rm -rf "Release/argon2.node" && cp -af "Release/obj.target/argon2.node" "Release/argon2.node")