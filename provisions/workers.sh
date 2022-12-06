
echo "copie o comando a seguir e rode nas vms 1 e 2"

wget https://github.com/prometheus/node_exporter/releases/download/v1.5.0/node_exporter-1.5.0.linux-amd64.tar.gz
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
sudo ./node_exporter

# Colar comando substituir e executar nas vms secundárias