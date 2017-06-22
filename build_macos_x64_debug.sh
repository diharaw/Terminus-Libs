# ------------------------------------------------
# Build PhysX
# ------------------------------------------------

#xcodebuild -project "external/PhysX/PhysX_3.4/Source/compiler/xcode_osx64/PhysX.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../../lib/debug/PhysX"  -configuration debug build

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

xcodebuild -project "projects/SDL/SDL2.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/debug/SDL"  -configuration Debug build

# ------------------------------------------------
# Build glslang
# ------------------------------------------------
cd projects
mkdir -p glslang
cd glslang
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/glslang" -G "Xcode"
cd ..
cd ..

xcodebuild -project "projects/glslang/glslang.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/debug/glslang"  -configuration Debug build

# ------------------------------------------------
# Build assimp
# ------------------------------------------------

# ------------------------------------------------
# Build nvidia-texture-tools
# ------------------------------------------------
cd projects
mkdir -p nvidia-texture-tools
cd nvidia-texture-tools
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_CXX_COMPILER=/usr/bin/g++ "../../external/nvidia-texture-tools" -G "Xcode"
cd ..
cd ..

xcodebuild -project "projects/nvidia-texture-tools/NV.xcodeproj" CONFIGURATION_BUILD_DIR="../../lib/debug/nvidia-texture-tools"  -configuration Debug build

# ------------------------------------------------
# Build luajit
# ------------------------------------------------