
data "yandex_compute_image" "os-image-family" {
  family = "centos-stream-8"
}

locals {
  ssh_key = "centos:${file("~/.ssh/id_ed25519.pub")}"
}

resource "yandex_compute_instance" "test-vm" {
  count       = 1
  name        = "tvm-centos"
  platform_id = "standard-v1"
  hostname    = "tvm-centos"
  zone        = var.default_zone

  scheduling_policy {
    preemptible = true
  }

  resources {
    cores         = 2
    core_fraction = 20
    memory        = 4
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.os-image-family.image_id
      type     = "network-ssd"
      size     = 30
    }
  }

  network_interface {
    subnet_id = var.yc_subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys           = local.ssh_key
    serial-port-enable = true
  }

  allow_stopping_for_update = true
}
