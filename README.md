# Streama for YunoHost

[![Integration level](https://dash.yunohost.org/integration/streama.svg)](https://dash.yunohost.org/appci/app/streama) ![](https://ci-apps.yunohost.org/ci/badges/streama.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/streama.maintain.svg)  
[![Install Streama with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=streama)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Streama quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Quick description of this app.

**Shipped version:** 1.9.1

## Screenshots

![](https://camo.githubusercontent.com/768d685ccbc08049ef682a638f0315dc9724cefb/687474703a2f2f692e696d6775722e636f6d2f544c70744b64702e676966)

## Demo

* [Official demo](Link to a demo site for this app.)

### Installing guide

 App can be installed by YunoHost **admin web-interface** or by **running following command**:

        $ sudo yunohost app install https://github.com/YunoHost-Apps/streama_ynh
        
 Upload directory is : `/home/yunohost.app/streama`
 
 Local video is : `/home/yunohost.app/streama/upload`
 
### Convert video :
 
        $ convert_movies -ffmpeg 
        $ convert_movies -avidemux
        $ convert_movies -mencoder
        $ convert_movies -avconv
 
### Upgrade this package:

        $ sudo yunohost app upgrade --verbose example -u https://github.com/YunoHost-Apps/streama_ynh
       
### Avidemux compilation :

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

## Configuration

How to configure this app: From an admin panel, a plain file with SSH, or any other way.

## Documentation

 * Official documentation: Link to the official documentation of this app
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

Are LDAP and HTTP auth supported?
Can the app be used by multiple users?

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/streama%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/streama/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/streama%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/streama/)

## Limitations

* Any known limitations.

## Additional information

* Other info you would like to add about this app.

**More info on the documentation page:**  
https://yunohost.org/packaging_apps

## Links

 * Report a bug: https://github.com/YunoHost-Apps/streama_ynh/issues
 * App website: Link to the official website of this app.
 * Upstream app repository: https://github.com/streamaserver/streama/
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
