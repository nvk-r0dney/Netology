### -------- Set Yandex.Cloud Provider -------- ###

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

### -------- Create Nerwork -------- ###

resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

### -------- Create Subnet -------- ###

resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}
