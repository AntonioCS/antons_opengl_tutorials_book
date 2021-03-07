project(00_hello_triangle C CXX) 
set(OUTPUT_FILE hello_triangle)

#add source folder so the program can be compiled at build folder
#include_directories(${CMAKE_SOURCE_DIR})

#Main
set(SOURCE_FILES main.c)
add_executable(${OUTPUT_FILE} ${SOURCE_FILES}) # ${HEADERS})

#OpenGL
find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIR})

#target_link_libraries(${PROJECT_NAME} ${OPENGL_gl_LIBRARY})

find_package(glfw3 CONFIG REQUIRED)
target_link_libraries(${OUTPUT_FILE} PRIVATE glfw)

find_package(GLEW CONFIG REQUIRED)
target_link_libraries(${OUTPUT_FILE} PRIVATE GLEW::GLEW)
