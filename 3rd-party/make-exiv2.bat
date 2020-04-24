REM Build exiv2 - be sure to run build-expat.bat and build-opencv.bat first

SET MYPATH=%~dp0
SET NAME=exiv2
SET BUILD_DIR=%mypath%/%name%/build

REM build exiv2
cmake -DEXPAT_BUILD_PATH="../../expat/build" -DZLIB_BUILD_PATH="../../opencv/build/3rdparty" -B%build_dir% %mypath%/%name%

msbuild -property:Configuration=Debug  %build_dir%/%name%.sln
msbuild -property:Configuration=Release  %build_dir%/%name%.sln