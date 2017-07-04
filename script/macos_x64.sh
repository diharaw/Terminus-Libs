cd ..

# ------------------------------------------------
# Build PhysX
# ------------------------------------------------

# Debug
xcodebuild -project "external/PhysX/PhysX_3.4/Source/compiler/xcode_osx64/PhysX.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../../lib/Debug"  -configuration debug build

# Release
xcodebuild -project "external/PhysX/PhysX_3.4/Source/compiler/xcode_osx64/PhysX.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../../lib/Release"  -configuration release build

# ------------------------------------------------
# Build CMake Projects
# ------------------------------------------------

mkdir -p projects
rm -r projects/*
cd projects

# ------------------------------------------------
# Build SDL
# ------------------------------------------------
mkdir -p SDL
cd SDL
cmake -DSDL_SHARED=OFF -DSDL_STATIC=ON -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/SDL" -G "Xcode"
cd ..
cd ..

# Debug
xcodebuild -project "projects/SDL/SDL2.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Debug"  -configuration Debug build

# Release
xcodebuild -project "projects/SDL/SDL2.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Release"  -configuration Release build

# ------------------------------------------------
# Build glslang
# ------------------------------------------------
cd projects
mkdir -p glslang
cd glslang
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/glslang" -G "Xcode"
cd ..
cd ..

# Debug
xcodebuild -project "projects/glslang/glslang.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Debug"  -configuration Debug build

# Release
xcodebuild -project "projects/glslang/glslang.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Release"  -configuration Release build

# ------------------------------------------------
# Build assimp
# ------------------------------------------------

cd projects
mkdir -p assimp
cd assimp
cmake -DCMAKE_ARCHIVE_OUTPUT_DIRECTORY=../../../lib -DCMAKE_LIBRARY_OUTPUT_DIRECTORY=../../../lib -DBUILD_SHARED_LIBS=OFF -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/assimp" -G "Xcode"
cd ..
cd ..

# Debug
xcodebuild -project "projects/assimp/assimp.xcodeproj" -configuration Debug build

# Release
xcodebuild -project "projects/assimp/assimp.xcodeproj" -configuration Release build

# ------------------------------------------------
# Build nvidia-texture-tools
# ------------------------------------------------
cd projects
mkdir -p nvidia-texture-tools
cd nvidia-texture-tools
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/nvidia-texture-tools" -G "Xcode"
cd ..
cd ..

# Debug
xcodebuild -project "projects/nvidia-texture-tools/NV.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Debug"  -configuration Debug build

# Release
xcodebuild -project "projects/nvidia-texture-tools/NV.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Release"  -configuration Release build

# ------------------------------------------------
# Build luajit
# ------------------------------------------------

cd projects
mkdir -p luajit
cd luajit
cmake -DCMAKE_ARCHIVE_OUTPUT_DIRECTORY=../../lib -DCMAKE_LIBRARY_OUTPUT_DIRECTORY=../../lib -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/luajit" -G "Xcode"
cd ..
cd ..

# Debug
xcodebuild -project "projects/luajit/luajit.xcodeproj" -configuration Debug build

# Release
xcodebuild -project "projects/luajit/luajit.xcodeproj" -configuration Release build

# ------------------------------------------------
# Build OpenAL-Soft
# ------------------------------------------------

cd projects
mkdir -p OpenAL-Soft
cd OpenAL-Soft
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/OpenAL-Soft" -G "Xcode"
cd ..
cd ..

# Debug
xcodebuild -project "projects/OpenAL-Soft/OpenAL.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Debug"  -configuration Debug build

# Release
xcodebuild -project "projects/OpenAL-Soft/OpenAL.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Release"  -configuration Release build

# ------------------------------------------------
# Build libzip
# ------------------------------------------------

cd projects
mkdir -p libzip
cd libzip
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/libzip" -G "Xcode"
cd ..
cd ..

# Debug
xcodebuild -project "projects/libzip/libzip.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Debug"  -configuration Debug build

# Release
xcodebuild -project "projects/libzip/libzip.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/Release"  -configuration Release build

# ------------------------------------------------
# Build HLSLcc
# ------------------------------------------------

cd projects
mkdir -p HLSLcc
cd HLSLcc
cmake -DHLSLCC_LIBRARY_SHARED=OFF -DCMAKE_ARCHIVE_OUTPUT_DIRECTORY=../../lib -DCMAKE_LIBRARY_OUTPUT_DIRECTORY=../../lib -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/HLSLcc" -G "Xcode"
cd ..
cd ..

# Debug
xcodebuild -project "projects/HLSLcc/HLSLcc.xcodeproj" -configuration Debug build

# Release
xcodebuild -project "projects/HLSLcc/HLSLcc.xcodeproj" -configuration Release build