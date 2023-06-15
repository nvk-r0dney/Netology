### -------- Cloud Vars -------- ###

variable "token" {
  type        = string
  description = "OAuth-token"
}

variable "cloud_id" {
  type        = string
  description = "Yandex.Cloud ID"
}

variable "folder_id" {
  type        = string
  description = "Yandex.Cloud MyDefault folder ID"
}

variable "default_zone" {
  type        = string
  description = "Yandex.CLoud default zone"
  default     = "ru-central1-a"
}

variable "default_cidr" {
  type        = list(string)
  description = "Yandex.Cloud Subnets"
  default     = ["10.0.1.0/24"]
}

variable "vpc_name" {
  type        = string
  description = "VPC network name"
  default     = "develop"
}


### -------- Common Vars -------- ###

variable "vms_ssh_root_key" {
  type        = string
  description = "My ssh public key"
  default     = "/home/rodney/.ssh/id_ed25519.pub"
}


### -------- Example VM_WEB var -------- ###

variable "vm_web_name" {
  type        = string
  description = "Example vm_web prefix"
  default     = "netology-develop-platform-web"
}


### -------- Example VM_DB var -------- ###

variable "vm_db_name" {
  type        = string
  description = "Example vm_db prefix"
  default     = "netology-develop-platform-db"
}
