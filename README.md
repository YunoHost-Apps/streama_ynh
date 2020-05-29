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
        
 Data Folder is in : /home/yunohost.app/streama
 
### Convert video :
 
        $ find -iname "*.mkv" -o -iname "*.avi" | parallel 'ffmpeg -i {} -vcodec h264 -acodec aac -strict -2 {.}.mp4'
 
### Upgrade this package:

        $ sudo yunohost app upgrade --verbose example -u https://github.com/YunoHost-Apps/streama_ynh
       

