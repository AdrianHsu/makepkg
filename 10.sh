sudo mkdir /repo
printf "\n[nasa-repo]\nSigLevel = Optional TrustAll\nServer = file:///repo" | sudo tee -a /etc/pacman.conf 
sudo cp ./sudo-oasis* /repo
cd /repo
sudo repo-add /repo/nasa-repo.db.tar.gz sudo-oasis-0.1-1-any.pkg.tar.gz

sudo gpg --import public_key.asc
sudo pacman-key --add public_key.asc
# sudo pacman-key --finger mykey
# sudo pacman-key --lsign mykey

