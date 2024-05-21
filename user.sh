# Git
git config --global user.email "flavorlessquark@gmail.com"
git config --global user.name "FlavorlessQuark"
ssh-keygen -t rsa

echo "Key located at ~/.ssh/id_rsa"

# AUR helper
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chmod 777 yay-git
cd yay-git
makepkg -si
cd ..
rm -rf yay-git
#LY

# yay -S ly google-cloud-cli
yay -S greetd-tuigreet google-cloud-cli
sudo systemctl enable ly.service

git clone https://github.com/FlavorlessQuark/zsh
mv zsh/.zshrc ~/.zshrc
source ~/.zshrc
rm -rf zsh

mkdir -p ~/.config

git clone https://github.com/FlavorlessQuark/VsCode_Settings settings
sudo cp -r settings/* ~/.config/Code\ -\ OSS/User/
rm -rf settings

# This lets code work on Wayland
echo $`--enable-features=WaylandWindowDecorations\n--ozone-platform-hint=auto`

git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
./emsdk install latest
./emsdk activate latest
echo 'source "/home/jjosephi/emsdk/emsdk_env.sh"' >> $HOME/.zshrc

rustup default stable
rustup toolchain install nightly

#install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
