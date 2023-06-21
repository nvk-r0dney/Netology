variable "env_name" {
  type    = string
  default = null
}

variable "network_id" {
  type = string
}

variable "subnet_zone" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "instance_name" {
  type    = string
  default = "vm"
}

variable "platform" {
  type    = string
  default = "standard-v1"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_cores" {
  type    = number
  default = 2
}

variable "instance_memory" {
  type    = number
  default = 1
}

variable "instance_core_fraction" {
  type    = number
  default = 5
}

variable "boot_disk_type" {
  type    = string
  default = "network-hdd"
}

variable "boot_disk_size" {
  type    = number
  default = 20
}

variable "public_ip" {
  type    = bool
  default = false
}

variable "known_internal_ip" {
  default = ""
}

variable "image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "preemptible" {
  type    = bool
  default = true
}
