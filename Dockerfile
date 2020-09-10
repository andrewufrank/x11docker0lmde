# buildx with 
#docker buildx build -t andrewufrank/x11docker-lmde:v2 --platform linux/arm/v7,linux/arm64,linux/amd64,linux/arm/v6 --push .

# x11docker/lmde (mint 20 with cinnamon desktop and lightdm)
# 
# Run mint desktop in docker. 
# Use x11docker to run image. 
# Get x11docker from github: 
#   https://github.com/mviereck/x11docker 
#
# Examples: 
#  - Run desktop:
#      x11docker --desktop x11docker/lxde
#  - Run single application:
#      x11docker x11docker/lxde pcmanfm
#
# Options:
# Persistent home folder stored on host with   --home
# Shared host folder with                      --sharedir DIR
# Hardware acceleration with option            --gpu
# Clipboard sharing with option                --clipboard
# Sound support with option                    --alsa
# With pulseaudio in image, sound support with --pulseaudio
# Printer support over CUPS with               --printer
# Webcam support with                          --webcam
#
# See x11docker --help for further options.

FROM debian:buster
RUN apt-get update && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      policykit-1-gnome && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      dbus-x11 

RUN env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	cinnamon-desktop-environment 



CMD ["cinnamon-session"]
# start with exec cinnamon-session
 
