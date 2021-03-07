@echo off
@setlocal EnableExtensions EnableDelayedExpansion


set cmake_batch_version=0.7
set rootDir=%~dp0%
set rootDir=%rootDir:\=/%
set srcDir=%rootDir%
set srcCodeDir=%rootDir%src
set testDir=%rootDir%tests
set builDir=%rootDir%build
set gitDir=%rootDir%.git
set toolChainPath=D:/vcpkg/scripts/buildsystems/vcpkg.cmake
set vtt=x64-windows
set created_test_dir=0
set cmakeMinVersion=3.15
set cmake_batch_debug=0


if exist "%rootDir%/CMakeLists.txt" (
	echo Executing cmake command
	cd "%builDir%"
	REM %PROJECTS_INSTALL_DIR% is an environment variable set on my system
	echo cmake .. -DCMAKE_TOOLCHAIN_FILE="%toolChainPath%" -DVCPKG_TARGET_TRIPLET="%vtt%" -DCMAKE_PREFIX_PATH="%PROJECTS_INSTALL_DIR%"
	cmake .. -DCMAKE_TOOLCHAIN_FILE="%toolChainPath%" -DVCPKG_TARGET_TRIPLET="%vtt%" -DCMAKE_PREFIX_PATH="%PROJECTS_INSTALL_DIR%"
	cd "%rootDir%"
	pause
)
