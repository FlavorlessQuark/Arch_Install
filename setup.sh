pacman -S grub efibootmgr iwd openssh firefox bluez bluez-utils seat zsh sudo code pipewire pipewire-audio wireplumber python displaylink wayland xorg-wayland node grim zip unzip

grub-install --target=x86_64-efi --efi-directory=/boot --bootlader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable dhcpcd
systemctl enable iwd
systemctl enable sshd
systemctl enable bluetooth
systemctl enable seatd
systemctl enable systemd.resolved

useradd -m -G wheel jjosephi
useradd -m -G sudo jjosephi

# AUR helper
sudo git clone https://aur/archlinux.org/yay-git.git
sudo chmod 777 yay-git
cd yay-git
makepkg -si
cd ..
rm -rf yay-git
#LY

yay -S ly google-cloud-cli
systemctl enable ly.service

echo "SDL_VIDEODRIVER=\"wayland,x11\"" >> /etc/environment
echo "WINI_UNIX_BACKEND=x11" >> /etc/environment

chsh -s `which zsh`
