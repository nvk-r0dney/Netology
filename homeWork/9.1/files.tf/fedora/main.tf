data "yandex_compute_image" "my_image" {
  family = var.image_family
}

locals {
  ssh_key = "fedora:${file("~/.ssh/id_ed25519.pub")}"
}

resource "yandex_compute_instance" "vm" {
  count = var.instance_count

  name        = var.env_name == null ? "${var.instance_name}-${count.index}" : "${var.env_name}-${var.instance_name}-${count.index}"
  platform_id = var.platform
  hostname    = var.env_name == null ? "${var.instance_name}-${count.index}" : "${var.env_name}-${var.instance_name}-${count.index}"
  zone        = var.subnet_zone

  scheduling_policy {
    preemptible = var.preemptible
  }

  resources {
    cores         = var.instance_cores
    memory        = var.instance_memory
    core_fraction = var.instance_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.my_image.image_id
      type     = var.boot_disk_type
      size     = var.boot_disk_size
    }
  }

  network_interface {
    subnet_id  = var.subnet_id
    nat        = var.public_ip
    ip_address = var.known_internal_ip
  }

  metadata = {
    ssh-keys           = local.ssh_key
    serial-port-enable = 1
  }

  allow_stopping_for_update = true
}
