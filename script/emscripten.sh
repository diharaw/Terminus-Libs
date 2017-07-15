cd ..

# ------------------------------------------------
# Build PhysX
# ------------------------------------------------

# Debug
#xcodebuild -project "external/PhysX/PhysX_3.4/Source/compiler/xcode_osx64/PhysX.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../../lib/Debug"  -configuration debug build

# Release
#xcodebuild -project "external/PhysX/PhysX_3.4/Source/compiler/xcode_osx64/PhysX.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../../lib/Release"  -configuration release build

# ------------------------------------------------
# Build CMake Projects
# ------------------------------------------------

mkdir -p projects
rm -r projects/*
cd projects

# ------------------------------------------------
# Build libzip
# ------------------------------------------------

cd projects
mkdir -p libzip
cd libzip

# Debug
mkdir -p debug
cd debug

cmake -DCMAKE_TOOLCHAIN_FILE=/Users/diharaw/emsdk/emscripten/1.37.9/cmake/Modules/Platform/Emscripten.cmake -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles" "../../external/libzip"
emmake make

cd ..

# Release
mkdir -p release
cd release

cmake -DCMAKE_TOOLCHAIN_FILE=/Users/diharaw/emsdk/emscripten/1.37.9/cmake/Modules/Platform/Emscripten.cmake -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" "../../external/libzip"
emmake make

cd ..
cd ..

# ------------------------------------------------
# Build Recast Detour
# ------------------------------------------------

# cd external/RecastDetour/RecastDemo
# premake5 xcode4

# cd ..
# cd ..
# cd ..

# # Debug
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/Detour.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Debug" -configuration Debug build
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/Recast.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Debug" -configuration Debug build
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/DetourCrowd.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Debug" -configuration Debug build
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/DetourTileCache.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Debug" -configuration Debug build
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/DebugUtils.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Debug" -configuration Debug build

# # Release
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/Detour.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Release" -configuration Release build
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/Recast.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Release" -configuration Release build
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/DetourCrowd.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Release" -configuration Release build
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/DetourTileCache.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Release" -configuration Release build
# xcodebuild -project "external/RecastDetour/RecastDemo/Build/xcode4/DebugUtils.xcodeproj" CONFIGURATION_BUILD_DIR="../../../../../lib/Release" -configuration Release build
