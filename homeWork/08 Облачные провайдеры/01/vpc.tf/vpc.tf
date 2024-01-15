resource "yandex_vpc_network" "cloud-network" {
  name      = "cloud-network"
  folder_id = var.folder_id
}

resource "yandex_vpc_route_table" "private2public" {
  name       = "p2p-route-table"
  network_id = yandex_vpc_network.cloud-network.id
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = yandex_compute_instance.nat-instance.network_interface.0.ip_address
  }
}

resource "yandex_vpc_subnet" "public-subnet" {
  name           = "public"
  v4_cidr_blocks = ["192.168.10.0/24"]
  zone           = var.default_zone
  network_id     = yandex_vpc_network.cloud-network.id
}

resource "yandex_vpc_subnet" "private-subnet" {
  name           = "private"
  v4_cidr_blocks = ["192.168.20.0/24"]
  zone           = var.default_zone
  network_id     = yandex_vpc_network.cloud-network.id
  route_table_id = yandex_vpc_route_table.private2public.id
}
