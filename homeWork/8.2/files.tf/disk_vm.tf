resource "yandex_compute_disk" "new-vm-disk" {
  count = 3
  zone  = var.default_zone
  name  = "vm-disk-0${count.index}"
  type  = "network-ssd"
  size  = 1
  labels = {
    environment = "disk-0${count.index}"
  }
}

resource "yandex_compute_instance" "vm-disk" {
  # count       = 1
  name        = "storage"
  zone        = var.default_zone
  platform_id = "standard-v1"

  depends_on = [yandex_compute_disk.new-vm-disk]

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

  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.new-vm-disk.*.id
    content {
      disk_id     = secondary_disk.value
      auto_delete = true
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
