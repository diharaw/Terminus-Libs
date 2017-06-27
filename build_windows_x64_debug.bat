rem ---------------------------------------------------
rem Build PhysX
rem ---------------------------------------------------

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

msbuild.exe "projects/SDL/SDL2.sln" /t:Build /p:OutDir="..\..\lib\SDL\Debug" /p:Configuration="debug"

timeout /t -1