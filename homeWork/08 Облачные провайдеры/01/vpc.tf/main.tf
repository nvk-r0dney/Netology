resource "yandex_compute_instance" "nat-instance" {
  name        = "nat-instance"
  zone        = var.default_zone
  hostname    = "nat-instance"
  platform_id = "standard-v1"

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.nat-host.id
      type     = "network-ssd"
      size     = 20
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.public-subnet.id
    nat        = true
    ip_address = "192.168.10.254"
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }

  scheduling_policy {
    preemptible = true
  }

  allow_stopping_for_update = true
}

resource "yandex_compute_instance" "public-instance" {
  name        = "public-instance"
  hostname    = "public-instance"
  zone        = var.default_zone
  platform_id = "standard-v1"

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.users-host.id
      type     = "network-ssd"
      size     = 20
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.public-subnet.id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }

  scheduling_policy {
    preemptible = true
  }

  allow_stopping_for_update = true
}

resource "yandex_compute_instance" "private-instance" {
  name        = "private-instance"
  hostname    = "private-instance"
  zone        = var.default_zone
  platform_id = "standard-v1"

  depends_on = [data.yandex_compute_image.nat-host]

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.users-host.id
      type     = "network-ssd"
      size     = 20
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.private-subnet.id
    nat       = false
  }

  metadata = {
    serial-port-enable = 1
    user-data          = "${file("./cloud-init.yml")}"
  }

  scheduling_policy {
    preemptible = true
  }

  allow_stopping_for_update = true
}
