# sudo pacman -Sy git
# git clone https://github.com/AdrianHsu/makepkg.git
cd makepkg
gpg --full-gen-key
# key: 91C81FFBC3EE8E05
sudo pacman-key --init
sudo pacman-key --populate archlinux
gpg --output public_key.asc --armor --export b03901023
PACKAGER='b03901023 <b03901023@ntu.edu.tw>' makepkg --sign
# passphrase: nasa2018

pacman -Qip sudo-oasis-0.1.1-any.pkg.tar.gz
gpg --import public_key.asc
sudo pacman-key --add public_key.asc

# sudo pacman-key --finger mykey
# sudo pacman-key --lsign mykey