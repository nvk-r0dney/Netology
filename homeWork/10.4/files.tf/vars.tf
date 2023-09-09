####################################
### -------- Cloud Vars -------- ###
####################################

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
}

####################################
### --------  VM  Vars  -------- ###
####################################

variable "hostname" {
  type = list(object({
    hostname = string
  }))
  description = "Hostname for Virtual machine"
}

variable "platform" {
  type        = string
  description = "Yandex.Cloud platform for VM"
}

variable "stop_to_update" {
  type        = bool
  description = "Allow stopping VM for updates"
}

####################################
## -------- VM Resources -------- ##
####################################

variable "vcpu_cores" {
  type        = number
  description = "Count of vCPU cores"
}

variable "ram_size" {
  type        = number
  description = "Count RAM Size in GB"
}

variable "vcpu_fraction" {
  type        = number
  description = "Using vCPU Resources in %"
}

variable "hdd_type" {
  type        = string
  description = "Type of Hard Disk Drive"
}

variable "hdd_size" {
  type        = number
  description = "Default HDD size in GB"
}

variable "preemptible" {
  type        = bool
  description = "Set VM preemprible or not"
}

variable "serial_port" {
  type        = number
  description = "Enable or disable serial port on VM"
}

variable "network_nat" {
  type        = bool
  description = "Enable or disable network NAT"
}

variable "image_family" {
  type        = string
  description = "OS Image for VM"
}
