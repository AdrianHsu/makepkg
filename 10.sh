sudo mkdir /repo
sudo cp sudo-oasis* /repo
sudo repo-add /repo/nasa-repo.db.tar.gz /repo/sudo-oasis-0.1-1-any.pkg.tar.xz
printf "\n[nasa-repo]\nSigLevel = Optional TrustAll\nServer = file:///repo" | sudo tee -a /etc/pacman.conf 

sudo gpg --import public_key.asc
sudo pacman-key --add public_key.asc
# sudo pacman-key --finger mykey
# sudo pacman-key --lsign mykey

