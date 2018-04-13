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
cmake "../../external/SDL" -G "Visual Studio 14 Win64"
cd ..
cd ..

msbuild.exe "projects/SDL/SDL2.sln" /t:Build /p:OutDir="..\..\lib\SDL\Release" /p:Configuration="Release"

rem ---------------------------------------------------
rem Build glslang
rem ---------------------------------------------------

cd projects
mkdir glslang
cd glslang
cmake "../../external/glslang" -G "Visual Studio 14 Win64"
cd ..
cd ..

msbuild.exe "projects/glslang/glslang.sln" /t:Build /p:OutDir="..\..\..\lib\debug\glslang" /p:Configuration="debug"

rem ---------------------------------------------------
rem Build nvidia-texture-tools
rem ---------------------------------------------------

cd projects
mkdir nvidia-texture-tools
cd nvidia-texture-tools
cmake "../../external/nvidia-texture-tools" -G "Visual Studio 14 Win64"
cd ..
cd ..

msbuild.exe "projects/nvidia-texture-tools/NV.sln" /t:Build /p:OutDir="../../../../lib/debug/nvidia-texture-tools" /p:Configuration="debug"

rem ---------------------------------------------------
rem Build OpenAL-Soft
rem ---------------------------------------------------

mkdir projects/OpenAL-Soft
cd projects/OpenAL-Soft
cmake "../../external/OpenAL-Soft" -G "Visual Studio 14 Win64"
cd ../..

msbuild.exe "projects/OpenAL-Soft/OpenAL.sln" /t:Build /p:OutDir="..\..\lib\debug\OpenAL-Soft" /p:Configuration="debug"

rem ---------------------------------------------------
rem Build luajit
rem ---------------------------------------------------

mkdir projects/luajit
cd projects/luajit
cmake "../../external/luajit" -G "Visual Studio 14 Win64"
cd ../..

msbuild.exe "projects/luajit/luajit.sln" /t:Build /p:OutDir="..\..\lib\debug\luajit" /p:Configuration="debug"

rem ---------------------------------------------------
rem Build assimp
rem ---------------------------------------------------

mkdir projects/assimp
cd projects/assimp
cmake "../../external/assimp" -G "Visual Studio 14 Win64"
cd ../..

msbuild.exe "projects/assimp/assimp.sln" /t:Build /p:OutDir="..\..\lib\debug\assimp" /p:Configuration="debug"

timeout /t -1