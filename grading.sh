# Grading Script...
tar xvf 10.tar && sudo ./10.sh
sudo pacsync nasa-repo
ls /repo
pacman -Si sudo-oasis | grep Repository
sudo pacman --noconfirm -S sudo-oasis
pacman -Qi sudo-oasis | grep Validated
pacman -Qi sudo-oasis | grep Packager