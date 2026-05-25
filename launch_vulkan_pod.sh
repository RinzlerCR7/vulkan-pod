#!/usr/bin/env bash

xhost +local:;

podman run --rm -it --network host \
    --device /dev/dri \
    --env DISPLAY \
    --env XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
    --security-opt label=type:container_runtime_t \
    --volume "$(pwd)":/app:Z \
    localhost/vulkan-img:latest;

# -e DISPLAY=$DISPLAY \
# -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY \
# -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
# -v $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY:$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY \
# -v $XDG_RUNTIME_DIR:$XDG_RUNTIME_DIR \
# --security-opt label=disable \

xhost -local:;