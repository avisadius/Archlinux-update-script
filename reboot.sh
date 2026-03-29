#!/bin/bash

sudo rm -f /var/lib/pacman/db.lck

if ps aux | grep -q '[p]acman'; then
    echo "Masih ada proses pacman yang berjalan. Menghentikan..."
    sudo pkill -9 pacman
    sleep 2
fi

if ps aux | grep -q '[y]ay'; then
    echo "Masih ada proses yay yang berjalan. Menghentikan..."
    sudo pkill -9 yay
    sleep 2
fi

sudo shiny-mirrors refresh && \
yay -Syyu --noconfirm && \

if [ -n "$(pacman -Qtdq)" ]; then sudo pacman -Rns $(pacman -Qtdq) --noconfirm; fi && \

sudo pacman -Sc --noconfirm && \

yay -Sc --noconfirm && \

flatpak uninstall --unused -y && \
flatpak repair && \

sudo grub-mkconfig -o /boot/grub/grub.cfg && \

reboot
