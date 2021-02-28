# Streama pour YunoHost

[![Integration level](https://dash.yunohost.org/integration/streama.svg)](https://dash.yunohost.org/appci/app/streama) ![](https://ci-apps.yunohost.org/ci/badges/streama.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/streama.maintain.svg)  
[![Install Streama with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=streama)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer Streama rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
Streama est un serveur de streaming multimédia auto-hébergé gratuit fonctionnant sur Java, que vous pouvez installer sur votre distribution Linux. Ses fonctionnalités sont similaires à celles de Kodi et Plex et c'est simplement une question de choix personnel que vous souhaitez utiliser.

**Version incluse :** 1.10.2

## Captures d'écran

![](https://user-images.githubusercontent.com/51749973/96721577-9f216280-13ac-11eb-935c-d083f4b010a2.jpg)

## Démo

* [Démo officielle](https://streama.demo-version.net)

**Nom d’utilisateur** : demoUser  
**Mot de passe** : demoUser

## Guide d’installation

> :warning: Streama doit être installé dans le domaine racine ou un sous-domaine dédié.

Le répertoire de téléchargement par défaut est : `/home/yunohost.app/streama` (doit être mentionné dans la page *Paramètres* ou peut être modifié)
 
Le répertoire vidéo local par défaut est : `/home/yunohost.app/streama/upload` (doit être mentionné dans la page *Paramètres* ou peut être modifié)

## Documentation

 * Documentation officielle : https://docs.streama-project.com/ ou https://github.com/streamaserver/streama/wiki

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ? **Non**
* L'application peut-elle être utilisée par plusieurs utilisateurs ? **Oui**

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/streama%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/streama/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/streama%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/streama/)

## Limitations

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

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/streama_ynh/issues
 * Site de l'application : https://docs.streama-project.com/
 * Dépôt de l'application principale : https://github.com/streamaserver/streama
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/streama_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/streama_ynh/tree/testing --debug
ou
sudo yunohost app upgrade streama -u https://github.com/YunoHost-Apps/streama_ynh/tree/testing --debug
```
