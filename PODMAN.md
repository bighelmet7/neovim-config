# podman
# export CONTAINERS_MACHINE_PROVIDER=applehv 
# limavm
# limactl create --name=podman template://podman
# limactl start --name=podman
# To run `podman` on the host (assumes podman-remote is installed), run the following commands:
#   ------
#   podman system connection add lima-podman "unix:///Users/{your-username}/.lima/podman/sock/podman.sock"
#   podman system connection default lima-podman
#   podman run quay.io/podman/hello
#   ------
