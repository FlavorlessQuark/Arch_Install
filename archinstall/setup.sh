pacman -S openssh firefox zsh code wireplumber python nodejs zip unzip noto-fonts waybar swaylock swayidle vim wf-recorder neofetch rust rustup

useradd -m -G wheel jjosephi
useradd -m -G sudo jjosephi

echo "SDL_VIDEODRIVER=\"wayland,x11\"" >> /etc/environment
echo "WINI_UNIX_BACKEND=x11" >> /etc/environment

chsh -s `which zsh`
