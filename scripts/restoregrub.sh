#!/usr/bin/env bash

sudo mount /dev/nvme0n1p4 /mnt
sudo mount /dev/nvme0n1p1 /mnt/boot/efi
sudo grub-install -d /mnt/usr/lib/grub/x86_64-efi --boot-directory=/mnt/boot /dev/nvme0n1p4
sudo grub-mkconfig -o /boot/grub/grub.cfg
cd /efi/EFI
#sudo mv -t ~/ refind/themes refind/refind.conf
sudo rm -r /efi/EFI/refind
paru -Rns refind
paru -Syu refind
sudo refind-install
sudo refind-mkdefault
sudo mv themes /efi/EFI/refind/
sudo mv refind.conf /efi/EFI/refind/
cd /efi/EFI/refind/
echo "include /efi/EFI/refind/themes/rEFInd-minimal-black/theme.conf">> refind.conf

