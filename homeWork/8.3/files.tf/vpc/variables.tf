variable "default_zone" {
  type        = string
  description = "Yandex.CLoud default zone"
}

variable "default_cidr" {
  type        = list(string)
  description = "Yandex.Cloud Subnets"
}

variable "vpc_name" {
  type        = string
  description = "VPC network name"
}
