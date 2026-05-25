# Vulkan Pod

Template for containerized Vulkan Project to be used in a Podman setup.

## Steps to create & run the Vulkan Pod

1. Build image for Vulkan project:

```sh
podman build -t vulkan-img .
```

2. Make `launch_vulkan_pod.sh` executable.

3. Create a pod with `vulkan-img` with necessary privileges, drivers & environment variable access:

```sh
./launch_vulkan_pod.sh
```

4. Test if everything's runnin' fine:

```sh
vkcube
vulkaninfo

make clean
make
make test
```