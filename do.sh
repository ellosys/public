sudo apt install -y cloud-init
echo 'datasource_list: [ ConfigDrive, DigitalOcean, NoCloud, None ]' > /etc/cloud/cloud.cfg.d/99_digitalocean.cfg
sudo systemctl enable cloud-init
sudo apt install -y openssh-server
sudo systemctl enable ssh.service
sudo passwd -d root
sudo mkdir -p /root/.ssh/
sudo apt autoremove
sudo apt autoclean
sudo rm -rf /var/log/*
sudo history -c
sudo poweroff
