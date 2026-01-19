pacman -S grub efibootmgr iwd openssh firefox bluez bluez-utils seatd zsh sudo code pipewire pipewire-audio wireplumber python wayland xorg-xwayland nodejs grim zip unzip noto-fonts waybar swaylock swayidle vim wf-recorder neofetch rust rustup

grub-install --target=x86_64-efi --efi-directory=/boot --bootlader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg

#systemctl enable dhcpcd
systemctl enable iwd
systemctl enable sshd
systemctl enable bluetooth
systemctl enable seatd
# systemctl enable systemd.resolved

useradd -m -G wheel jjosephi
useradd -m -G sudo jjosephi

echo "SDL_VIDEODRIVER=\"wayland,x11\"" >> /etc/environment
echo "WINI_UNIX_BACKEND=x11" >> /etc/environment

chsh -s `which zsh`
