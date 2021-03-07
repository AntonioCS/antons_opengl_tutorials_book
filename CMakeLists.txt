cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(antons_tutorials C CXX)            

if (NOT DEFINED CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 20)
else()
  if (CMAKE_CXX_STANDARD VERSION_LESS 20)
    message(FATAL_ERROR "CMAKE_CXX_STANDARD of 20 or later required.")
  endif()
endif()
if (NOT DEFINED CMAKE_CXX_EXTENSIONS)
  set(CMAKE_CXX_EXTENSIONS OFF)
endif()

if (MSVC)
	add_definitions(-D_UNICODE -DUNICODE -DWIN32_LEAN_AND_MEAN -DNOMINMAX -DWINVER=0x0A00 -D_WIN32_WINNT=0x0A00)
	add_definitions(-D_CRT_SECURE_NO_DEPRECATE -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_DEPRECATE)
	add_definitions(-D_ATL_SECURE_NO_DEPRECATE -D_SCL_SECURE_NO_WARNINGS)
endif()


add_subdirectory(00_hello_triangle)

#add source folder so the program can be compiled at build folder
#include_directories(${CMAKE_SOURCE_DIR})

#Headers
#file(GLOB HEADERS
#  *.h
#  )

#Main
#set(SOURCE_FILES main.c)
#add_executable(hellot ${SOURCE_FILES} ${HEADERS})

#OpenGL
#find_package(OpenGL REQUIRED)
#include_directories(${OPENGL_INCLUDE_DIR})

#target_link_libraries(hellot ${OPENGL_gl_LIBRARY})


#GLFW
#find_package(PkgConfig REQUIRED)
#pkg_search_module(GLFW REQUIRED glfw3)
#include_directories(${GLFW_INCLUDE_DIRS})
#target_link_libraries(hellot ${GLFW_LIBRARIES})

#GLEW
#find_package(GLEW REQUIRED)
#if (GLEW_FOUND)
#    include_directories(${GLEW_INCLUDE_DIRS})
#    target_link_libraries(hellot ${GLEW_LIBRARIES})
#endif()



