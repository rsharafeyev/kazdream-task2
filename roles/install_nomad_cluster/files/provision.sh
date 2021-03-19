#!/usr/bin/env bash

aHostName=$(hostname)

# Install nomad
sudo cp nomad -d /usr/bin/nomad
sudo chmod +x /usr/bin/nomad
sudo mkdir -p /etc/nomad
sudo cp "nomad-conf-$aHostName.hcl" "/etc/nomad/nomad-conf.hcl"
sudo cp "nomad.service" "/etc/systemd/system/nomad.service"

# Install consul
sudo cp consul -d /usr/bin/consul
sudo chmod +x /usr/bin/consul
sudo mkdir -p /etc/consul
sudo mkdir -p /etc/consul/server
sudo mkdir -p /var/consul-data
if [ $aHostName = "server" ]; then
    sudo cp "consul-config-server.json" "/etc/consul/server/config.json"
fi
sudo cp "consul-service-$aHostName.service" "/etc/systemd/system/consul.service"
