@ Build PhysX
msbuild.exe "external/PhysX/PhysX_3.4/Source/compiler/vc14win64/PhysX.sln" /t:Build /p:OutDir="..\..\..\..\..\..\lib\release\PhysX" /p:Configuration="release"