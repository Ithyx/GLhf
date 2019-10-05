cmake_minimum_required (VERSION 3.5)

project (GLhf)

# adding GLFW
## removing tests, doc and examples
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
## build glfw
add_subdirectory ("vendor/glfw-3.3")
## using openGL in project
find_package(OpenGL REQUIRED)

# setting output build directory
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
# setting cpp compilation flags
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -std=c++17")
# setting path to source dir
set (source_dir "${PROJECT_SOURCE_DIR}/src/")

# setting source files
file (GLOB source_files "${source_dir}/*.cpp")

# creating executable
add_executable (GLhf ${source_files} "vendor/glfw-3.3/deps/glad_gl.c")

# 
target_include_directories(GLhf PUBLIC ${OPENGL_INCLUDE_DIR})
target_include_directories(GLhf PUBLIC "vendor/glfw-3.3/deps")
target_include_directories(GLhf PUBLIC "vendor/glfw-3.3/deps/glad")
target_link_libraries(GLhf ${OPENGL_gl_LIBRARY})
target_link_libraries(GLhf glfw)