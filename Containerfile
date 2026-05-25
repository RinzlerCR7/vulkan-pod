FROM fedora:latest

RUN dnf -y update && \
    dnf -y install gcc-c++ cmake && \
    dnf -y install vulkan-tools vulkan-loader-devel mesa-vulkan-drivers vulkan-validation-layers-devel && \
    dnf -y install libXi-devel libXxf86vm-devel && \
    dnf -y install glfw-devel glm-devel glslc

# install wayland-devel too if linking "-lwayland-client -lwayland-egl" in Makefile.

RUN mkdir -p /app

WORKDIR /app

CMD ["/bin/bash"]