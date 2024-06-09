<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Streama YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/streama.svg)](https://dash.yunohost.org/appci/app/streama) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/streama.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/streama.maintain.svg)

[![Instalatu Streama YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=streama)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Streama YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Self hosted streaming media server

**Paketatutako bertsioa:** 1.10.5~ynh2

**Demoa:** <https://streama.demo-version.net>

## Pantaila-argazkiak

![Streama(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://streamaserver.org/>
- Administratzaileen dokumentazio ofiziala: <https://docs.streama-project.com/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/streamaserver/streama>
- YunoHost Denda: <https://apps.yunohost.org/app/streama>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/streama_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/streama_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/streama_ynh/tree/testing --debug
edo
sudo yunohost app upgrade streama -u https://github.com/YunoHost-Apps/streama_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
