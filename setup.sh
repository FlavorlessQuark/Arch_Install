pacman -S grub efibootmgr dhcpcd iwd openssh firefox bluez bluez-utils seat zsh sudo code sway i3status swayidle swaylock alacritty pulseaudio pulseaudio-bluetooth

grub-install --target=x86_64-efi --efi-directory=/boot --bootlader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable dhcpcd
systemctl enable iwd
systemctl enable sshd
systemctl enable bluetooth
systemctl enable seatd

useradd -m -G wheel jjosephi

# AUR helper
sudo git clone https://aur/archlinux.org/yay-git.git
sudo chmod 777 yay-git
cd yay-git
makepkg -si
cd ..
rm -rf yay-git
#LY

yay -S ly
systemctl enable ly.service

chsh -s `which zsh`
