#!/bin/sh
sudo mount "$1"2 mnt &&\
#sudo cp -R game/* mnt/usr/games/
#sudo chmod 777 -R mnt/usr/games
cp -r game mnt/root/game
mkdir -p mnt/root/.emulationstation/
cp game/es_input.cfg mnt/root/.emulationstation/
cp game/es_systems.cfg mnt/root/.emulationstation/
cp game/es_settings.cfg mnt/root/.emulationstation/
mkdir -p mnt/root/.mednafen/
cp game/mednafen-09x.cfg mnt/root/.mednafen/mednafen-09x.cfg
sudo umount "$1"2 &&\
#./write_overlay.sh $1 &&\
sudo cp game/rc.local mnt/etc/rc.local
sync
echo "###write ES ok!"


