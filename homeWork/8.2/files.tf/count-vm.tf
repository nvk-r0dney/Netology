resource "yandex_compute_instance" "count-vm" {
  count       = 2
  name        = "count-vm-0${count.index}"
  platform_id = "standard-v1"

  resources {
    cores         = 2
    memory        = 4
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu_image.id
      size     = 20
      type     = "network-ssd"
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
    serial-port-enable = 1
  }
}
