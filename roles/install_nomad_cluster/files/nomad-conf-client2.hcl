# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/client"

# Binding address
bind_addr = "0.0.0.0"

# Enable the client
client {
    enabled = true
    network_interface = "eth1"
    servers = ["192.168.33.11:4647"]
}

# Advertise an accessible IP address so the server is reachable by other servers
# and clients. The IPs can be materialized by Terraform or be replaced by an
# init script.
advertise {
    http = "192.168.33.13:4646"
    rpc = "192.168.33.13:4647"
    serf = "192.168.33.13:4648"
}