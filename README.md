# Archlinux-update-script

simple update script for archlinux

are you the one too lazy for typing bash script for archlinux every update?
then this sciript is for you

## What this script do?

delete pacman lock

clean pacman cache

clean flatpak cache

update grub 

## which one should I use?

update.sh for update when you still using your devices

shutdown.sh for update when you already done everything with your devices

reboot.sh for update and you need to use your device again

## requirements package 

shiny mirrors https://gitlab.com/Arisa_Snowbell/shiny-mirrors or https://aur.archlinux.org/shiny-mirrors.git

yay https://github.com/Jguer/yay or https://aur.archlinux.org/yay.git

## Usage 

Download the script from repository, extract to your home directory

give permission 

sudo chmod +x update.sh 

sudo chmod +x reboot.sh

sudo chmod +x shutdown.sh

type update.sh reboot.sh or shutdown.sh (depend which one suit you)

fill in the password and wait for the script executable

type password again for confirmation (depend on your internet and which package updated, there's common for arch to asking again for the password)

wait and done
