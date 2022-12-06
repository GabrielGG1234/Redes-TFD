sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
docker swarm init --advertise-addr 192.168.1.2
docker run --name prometheus -d -p 9090:9090 prom/prometheus
docker run -d -p 3000:3000 --name grafana grafana/grafana:latest
