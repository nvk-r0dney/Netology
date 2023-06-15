output "yandex_vpc_network_id" {
  description = "Yandex.Cloud VPC Network ID"
  value       = module.vpc_dev.yc_vpc_id
}

output "yandex_vpc_subnet_id" {
  description = "Yandex.Cloud VPC Subnet ID"
  value       = module.vpc_dev.yc_subnet_id
}
