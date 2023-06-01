resource "yandex_compute_instance" "for-each-vm" {
  for_each = { for key, value in var.hosts : key => value }

  name = each.value.hostname
  #platform_id = "standard-v2"

  depends_on = [yandex_compute_instance.count-vm]

  resources {
    cores         = each.value.vcpu_cores
    memory        = each.value.ram_size
    core_fraction = each.value.vcpu_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu_image.id
      size     = each.value.hdd_size
      type     = each.value.hdd_type
    }
  }

  scheduling_policy {
    preemptible = true
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    ssh-keys           = local.ssh_key
    serial-port-enable = each.value.serial_port_enable
  }
}

variable "hosts" {
  type = list(object({
    hostname           = string
    vcpu_cores         = number
    ram_size           = number
    vcpu_fraction      = number
    hdd_size           = number
    hdd_type           = string
    serial_port_enable = number
  }))
  description = "Variable list for VM with for_each"
  default = [
    {
      hostname           = "for-each-vm-0"
      vcpu_cores         = 2
      ram_size           = 4
      vcpu_fraction      = 20
      hdd_size           = 20
      hdd_type           = "network-ssd"
      serial_port_enable = 1
    },
    {
      hostname           = "for-each-vm-1"
      vcpu_cores         = 4
      ram_size           = 8
      vcpu_fraction      = 100
      hdd_size           = 30
      hdd_type           = "network-ssd"
      serial_port_enable = 1
    }
  ]
}
