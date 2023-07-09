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

variable "yc_subnet_id" {
  type        = string
  description = "Default YC subnet ID"
}

variable "yc_vpc_id" {
  type        = string
  description = "Default YC network ID"
}

variable "default_zone" {
  type        = string
  description = "Yandex.CLoud default zone"
  default     = "ru-central1-a"
}
