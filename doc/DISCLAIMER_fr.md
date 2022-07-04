## Guide d’installation

> :warning: Streama doit être installé dans le domaine racine ou un sous-domaine dédié.

Le répertoire de téléchargement par défaut est : `/home/yunohost.app/streama` (doit être mentionné dans la page *Paramètres* ou peut être modifié)
 
Le répertoire vidéo local par défaut est : `/home/yunohost.app/streama/upload` (doit être mentionné dans la page *Paramètres* ou peut être modifié)

## Informations additionnelles

* Après l’installation :
 - **Nom d’utilisateur** : `admin`
 - **Mot de passe** : `admin`

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
