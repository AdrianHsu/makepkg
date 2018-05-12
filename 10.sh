sudo mkdir /repo
sudo cp sudo-oasis* /repo
sleep 3 # to ensure copy files
sudo repo-add /repo/nasa-repo.db.tar.gz /repo/sudo-oasis-0.1-1-any.pkg.tar.gz
printf "\n[nasa-repo]\nSigLevel = Optional TrustAll\nServer = file:///repo" | sudo tee -a /etc/pacman.conf 

sudo gpg --import public_key.asc
sudo pacman-key --add public_key.asc
# sudo pacman-key --finger mykey
# sudo pacman-key --lsign mykey

