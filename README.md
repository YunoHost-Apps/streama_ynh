# Streama app for YunoHost
Streama Server

**Shipped version:** 1.9.1

- [Yunohost project](https://yunohost.org)
- [Streama website](https://github.com/streamaserver/streama/)

![](https://avatars2.githubusercontent.com/u/38193973?s=280&v=4)


[![Install Streama with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=streama)

### Installing guide

 App can be installed by YunoHost **admin web-interface** or by **running following command**:

        $ sudo yunohost app install https://github.com/YunoHost-Apps/streama_ynh
        
 Upload directory is : /home/yunohost.app/streama
 
 Local video is : /home/yunohost.app/streama/upload
 
### Convert video :
 
        $ convert_movies -ffmpeg or convert_movies -avidemux
 
### Upgrade this package:

        $ sudo yunohost app upgrade --verbose example -u https://github.com/YunoHost-Apps/streama_ynh
       
### Avidemux compilation :

        $ git clone https://github.com/mean00/avidemux2/
        $ cd avidemux2
        $ sudo apt-get install build-essential cmake \
        pkg-config yasm libsqlite3-dev libfontconfig1-dev \
        libfribidi-dev libxvdev libvdpau-dev libva-dev \
        libasound2-dev libpulse-dev libfdk-aac-dev \
        libpng-dev libaften-dev libmp3lame-dev libx264-dev \
        libxvidcore-dev libfaad-dev libfaac-dev libopus-dev \
        libvorbis-dev libogg-dev libdca-dev libx265-dev
        $ bash bootStrap.bash --deb --without-qt --with-cli
        
