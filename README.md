# x11docker/lxde from m viereck

Dockerfile containing LXDE desktop
 - Run LXDE desktop in docker.
  - Use [x11docker](https://github.com/mviereck/x11docker) to run GUI applications and desktop environments in docker images. 

# Command examples: 
 - Single application: `x11docker x11docker/lxde pcmanfm`
 - Full desktop: `x11docker --desktop x11docker/lxde`

# Options:
 - Persistent home folder stored on host with   `--home`
 - Shared host file or folder with              `--share PATH`
 - Hardware acceleration with option            `--gpu`
 - Clipboard sharing with option                `--clipboard`
 - ALSA sound support with option               `--alsa`
 - Pulseaudio sound support with option         `--pulseaudio`
 - Language locale settings with                `--lang [=$LANG]`
 - Printing over CUPS with                      `--printer`
 - Webcam support with                          `--webcam`

See `x11docker --help` for further options.

# Extend base image
To add your desired applications, create your own Dockerfile with this image as a base. Example:
```
FROM x11docker/lxde
RUN apt-get update
RUN apt-get install -y midori
```

# Screenshot
![screenshot](https://raw.githubusercontent.com/mviereck/x11docker/screenshots/screenshot-lxde.png "lxde desktop running in Xephyr window using x11docker")
 

