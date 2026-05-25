cmake_minimum_required(VERSION 3.10)

project(VulkanTest)

# Use C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Optimization flag
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")

# Create executable
add_executable(VulkanTest main.cpp)

# Link libraries
target_link_libraries(VulkanTest
    glfw
    vulkan
    dl
    pthread
    X11
    Xxf86vm
    Xrandr
    Xi
)