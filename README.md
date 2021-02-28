# Streama for YunoHost

[![Integration level](https://dash.yunohost.org/integration/streama.svg)](https://dash.yunohost.org/appci/app/streama) ![](https://ci-apps.yunohost.org/ci/badges/streama.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/streama.maintain.svg)  
[![Install Streama with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=streama)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Streama quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Streama is a free self hosted media streaming server running on Java, that you can install on your Linux distribution. Its features are similar to those of Kodi and Plex and it is simply a matter of personal choice which one you would like to use.

**Shipped version:** 1.10.2

## Screenshots

![](https://user-images.githubusercontent.com/51749973/96721577-9f216280-13ac-11eb-935c-d083f4b010a2.jpg)

## Demo

* [Official demo](https://streama.demo-version.net)

**User**: demoUser  
**Password**: demoUser

## Installation guide

> :warning: Streama must be installed in the root domain or subdomain.

Default upload directory is: `/home/yunohost.app/streama` (must be mentioned in *Settings* page or can be changed)
 
Default local video directory is: `/home/yunohost.app/streama/upload` (must be mentioned in *Settings* page or can be changed)

## Documentation

 * Official documentation: https://docs.streama-project.com/ or https://github.com/streamaserver/streama/wiki

#### Multi-user support

* Are LDAP and HTTP auth supported? **No**
* Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/streama%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/streama/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/streama%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/streama/)

## Limitations

## Additional information

* After install:
 - **Username**: admin
 - **Password**: admin

This can be changed in settings.

### Convert video:
 
        $ convert_movies -ffmpeg 
        $ convert_movies -avidemux
        $ convert_movies -mencoder
        $ convert_movies -avconv
        
### Avidemux compilation:

        $ git clone https://github.com/mean00/avidemux2/
        $ cd avidemux2
        $ sudo apt-get install build-essential cmake \
        pkg-config yasm libsqlite3-dev libfontconfig1-dev \
        libfribidi-dev libxvdev libvdpau-dev libva-dev \
        libasound2-dev libpulse-dev libfdk-aac-dev \
        libpng-dev libmp3lame-dev libx264-dev \
        libxvidcore-dev libfaad-dev libfaac-dev libopus-dev \
        libvorbis-dev libogg-dev libdca-dev libx265-dev
        $ wget https://www.deb-multimedia.org/pool/main/a/aften/libaften0_0.0.8svn20100103-dmo2_amd64.deb
        $ wget https://www.deb-multimedia.org/pool/main/a/aften/libaften-dev_0.0.8svn20100103-dmo2_amd64.deb
        $ sudo dpkg -i libaften0_0.0.8svn20100103-dmo2_amd64.deb
        $ sudo dpkg -i libaften-dev_0.0.8svn20100103-dmo2_amd64.deb
        $ bash bootStrap.bash --deb --without-qt --with-cli

## Links

 * Report a bug: https://github.com/YunoHost-Apps/streama_ynh/issues
 * App website: https://docs.streama-project.com/
 * Upstream app repository: https://github.com/streamaserver/streama
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/streama_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/streama_ynh/tree/testing --debug
or
sudo yunohost app upgrade streama -u https://github.com/YunoHost-Apps/streama_ynh/tree/testing --debug
```
