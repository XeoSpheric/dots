#!/bin/bash
set -x

rm -f \
  install.sh \
  chroot.sh \
  variables.sh \
  pacman.list \
  aur.list

wget -q https://raw.githubusercontent.com/XeoSpheric/dots/master/arch/install.sh
wget -q https://raw.githubusercontent.com/XeoSpheric/dots/master/arch/chroot.sh
wget -q https://raw.githubusercontent.com/XeoSpheric/dots/master/arch/variables.sh
wget -q https://raw.githubusercontent.com/XeoSpheric/dots/master/arch/pacman.list
wget -q https://raw.githubusercontent.com/XeoSpheric/dots/master/arch/aur.list

chmod +x *.sh

./install.sh
