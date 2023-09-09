default_zone = "ru-central1-a"
hostname = [
  {
    hostname = "jenkins-master-01"
  },
  {
    hostname = "jenkins-agent-01"
  }
]
platform       = "standard-v1"
stop_to_update = true
vcpu_cores     = 2
vcpu_fraction  = 20
ram_size       = 8
hdd_type       = "network-ssd"
hdd_size       = 20
preemptible    = true
serial_port    = 1
network_nat    = true
image_family   = "centos-stream-8"
