output "yc_vpc_id" {
  value = yandex_vpc_network.develop.id
}

output "yc_subnet_id" {
  value = yandex_vpc_subnet.develop.id
}
