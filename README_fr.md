# Streama pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/streama.svg)](https://dash.yunohost.org/appci/app/streama) ![](https://ci-apps.yunohost.org/ci/badges/streama.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/streama.maintain.svg)  
[![Installer Streama avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=streama)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Streama rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Serveur de streaming auto-hébergé

**Version incluse :** 1.10.3~ynh2

**Démo :** https://streama.demo-version.net

## Captures d'écran

![](./doc/screenshots/96721577-9f216280-13ac-11eb-935c-d083f4b010a2.jpg)
![](./doc/screenshots/screenshot.jpg)

## Avertissements / informations importantes

## Guide d’installation

> :warning: Streama doit être installé dans le domaine racine ou un sous-domaine dédié.

Le répertoire de téléchargement par défaut est : `/home/yunohost.app/streama` (doit être mentionné dans la page *Paramètres* ou peut être modifié)
 
Le répertoire vidéo local par défaut est : `/home/yunohost.app/streama/upload` (doit être mentionné dans la page *Paramètres* ou peut être modifié)

## Informations additionnelles

* Après l’installation :
 - **Nom d’utilisateur** : admin
 - **Mot de passe** : admin

Ceci pourra être changé dans les paramètres.

### Convertir des vidéos :
 
        $ convert_movies -ffmpeg 
        $ convert_movies -avidemux
        $ convert_movies -mencoder
        $ convert_movies -avconv
        
### Compilation avidemux :

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

## Documentations et ressources

* Site officiel de l'app : https://streamaserver.org/
* Documentation officielle de l'admin : https://docs.streama-project.com/
* Dépôt de code officiel de l'app : https://github.com/streamaserver/streama
* Documentation YunoHost pour cette app : https://yunohost.org/app_streama
* Signaler un bug : https://github.com/YunoHost-Apps/streama_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/streama_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/streama_ynh/tree/testing --debug
ou
sudo yunohost app upgrade streama -u https://github.com/YunoHost-Apps/streama_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps