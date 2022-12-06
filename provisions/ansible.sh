sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
sudo nano /etc/ansible/hosts
sudo docker swarm init --advertise-addr 192.168.1.2
sudo reboot
