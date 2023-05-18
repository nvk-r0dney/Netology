### VM_WEB Variables

variable "vm_web_machine_name" {
  type        = string
  description = "Machine Name in Yandex.Cloud"
  default     = "netology-develop-platform-web"
}

variable "vm_web_resources" {
  type = map(number)
  default = {
    cores         = 2
    memory        = 1
    core_fraction = 5
  }
}

### VM_DB Variables

variable "vm_db_machine_name" {
  type        = string
  description = "Machine Name in Yandex.Cloud"
  default     = "netology-develop-platform-db"
}

variable "vm_db_resources" {
  type = map(number)
  default = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
}

### AllVM Resources

variable "all_resources" {
  type = map(any)
  default = {
    platform_id        = "standard-v1"
    serial_port_enable = "1"
    ssh_keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILJpYQT/m1O5e6S0I3H/lGHgzN/JYD2DzLksszQ4/GxD rodney@arch-home"
    family             = "ubuntu-2004-lts"
  }
}

