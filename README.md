# 60 GEGL plugins of mine compatible with GIMP 2.99/3 

Source code and Linux and Windows binaries avalible

![image](https://github.com/LinuxBeaver/GIMP_3_GEGL_PLUGIN_BUNKER/assets/78667207/a8cf1f6d-3eb2-47bc-879e-44966ea6baa9)


### As of now GIMP 3 plugins are not compatible with GIMP 2.10 plugins (the normal repos)

Everyone using GIMP 2.99.18+/GIMP 3 that wishes to use my GEGL GIMP plugins must only use this repo and not any other repo on my Github. This is because of a known bug. Mixing these plugins with other normal repos will cause a crash on close in GIMP 3.  Meaning if a tab or GIMP's main window closes a crash may happen and it happens because the normal GEGL plugins have features that GIMP 2.99.19 is not compatible with. This repo removed those features


## How to install

Location to put binaries 

**Windows**

 C:\Users\(USERNAME)\AppData\Local\gegl-0.4\plug-ins
 
 **Linux** 

 /home/(USERNAME)/.local/share/gegl-0.4/plug-ins

**Linux (Flatpak includes Chromebook)**

 /home/(USERNAME)/.var/app/org.gimp.GIMP/data/gegl-0.4/plug-ins

then restart GIMP and go to GEGL operation to find the new plugins or if on 2.99.19 



## Compiling and Installing

You can run the build_everything_linux.sh/build_everything_windows.sh command or...

### Linux

To compile and install you will need the GEGL header files (`libgegl-dev` on
Debian based distributions or `gegl` on Arch Linux) and meson (`meson` on
most distributions).

```bash
meson setup --buildtype=release build
ninja -C build

```

If you have an older version of gegl you may need to copy to `~/.local/share/gegl-0.3/plug-ins`
instead (on Ubuntu 18.04 for example).

### Windows

The easiest way to compile this project on Windows is by using msys2.  Download
and install it from here: https://www.msys2.org/

Open a msys2 terminal with `C:\msys64\mingw64.exe`.  Run the following to
install required build dependencies:

```bash
pacman --noconfirm -S base-devel mingw-w64-x86_64-toolchain mingw-w64-x86_64-meson mingw-w64-x86_64-gegl
```

Then build the same way you would on Linux:

```bash
meson setup --buildtype=release build
ninja -C build
```
