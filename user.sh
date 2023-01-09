# Git
git config --global user.email "flavorlessquark@gmail.com"
git config --global user.name "FlavorlessQuark"
ssh-keygen -t rsa

echo "Key located at ~/.ssh/id_rsa"

git clone https://github.com/FlavorlessQuark/zsh
mv zsh/.zshrc ~/.zshrc
source ~/.zshrc
rm -rf zsh

mkdir -p ~/.config

git clone https://github.com/FlavorlessQuark/VsCode_Settings settings
cp settings /* ~/.config/Code\ -\ OSS/User/

# This lets code work on Wayland
echo $`--enable-features=WaylandWindowDecorations\n--ozone-platform-hint=auto`
