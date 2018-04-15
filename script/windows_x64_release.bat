cd ..

rem ---------------------------------------------------
rem CMake Projects
rem ---------------------------------------------------

IF NOT EXIST projects mkdir projects

rem ---------------------------------------------------
rem Build SDL
rem ---------------------------------------------------

cd projects
mkdir SDL
cd SDL
cmake -DSDL_SHARED=OFF -DSDL_STATIC=ON "../../external/SDL" -G "Visual Studio 15 Win64"
cd ..
cd ..

msbuild.exe "projects/SDL/SDL2.sln" /t:Build /p:Configuration="Release"

rem ---------------------------------------------------
rem Build glslang
rem ---------------------------------------------------

cd projects
mkdir glslang
cd glslang
cmake "../../external/glslang" -G "Visual Studio 15 Win64"
cd ..
cd ..

msbuild.exe "projects/glslang/glslang.sln" /t:Build /p:Configuration="release"

rem ---------------------------------------------------
rem Build nvidia-texture-tools
rem ---------------------------------------------------

cd projects
mkdir nvidia-texture-tools
cd nvidia-texture-tools
cmake "../../external/nvidia-texture-tools" -G "Visual Studio 15 Win64"
cd ..
cd ..

msbuild.exe "projects/nvidia-texture-tools/NV.sln" /t:Build /p:Configuration="release"

rem ---------------------------------------------------
rem Build OpenAL-Soft
rem ---------------------------------------------------

cd projects
mkdir OpenAL-Soft
cd OpenAL-Soft
cmake "../../external/OpenAL-Soft" -G "Visual Studio 15 Win64"
cd ..
cd ..

msbuild.exe "projects/OpenAL-Soft/OpenAL.sln" /t:Build /p:Configuration="release"

rem ---------------------------------------------------
rem Build luajit
rem ---------------------------------------------------

cd projects
mkdir luajit
cd luajit
cmake -DBUILD_SHARED_LIBS=OFF "../../external/luajit" -G "Visual Studio 15 Win64"
cd ..
cd ..

msbuild.exe "projects/luajit/luajit.sln" /t:Build /p:Configuration="release"

rem ---------------------------------------------------
rem Build assimp
rem ---------------------------------------------------

cd projects
mkdir assimp
cd assimp
cmake -DASSIMP_BUILD_TESTS=OFF -DBUILD_SHARED_LIBS=OFF "../../external/assimp" -G "Visual Studio 15 Win64"
cd ..
cd ..

msbuild.exe "projects/assimp/assimp.sln" /t:Build /p:Configuration="release"

rem ---------------------------------------------------
rem Build bullet3
rem ---------------------------------------------------

cd projects
mkdir bullet3
cd bullet3
cmake "../../external/bullet3" -G "Visual Studio 15 Win64"
cd ..
cd ..

msbuild.exe "projects/bullet3/BULLET_PHYSICS.sln" /t:Build /p:Configuration="release"

timeout /t -1