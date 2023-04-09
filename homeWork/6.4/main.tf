terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "yandex" {
    cloud_id = var.cloud_id
    folder_id = var.folder_id
    zone = var.zone
} 

resource "yandex_compute_instance" "centos-node-1" {
  name = "centos-node-1"
  hostname = "centos-node-1"
  description = "Centos node by Terraform"
  folder_id = var.folder_id
  zone = var.zone
  platform_id = "standart-v2"

  allow_stopping_for_update = true

  resources {
    cores = 2
    core_fraction = 100
    memory = 4
  }

  boot_disk {
    initialize_params {
        image_id = "fd8kefvoj61btf9q0nlb"
        size = 50
        type = "network-ssd"
    }
  }

  network_interface {
    subnet_id = "e9b6ociiaoqms3kt2a0i"
    nat = true
  }
}


variable "cloud_id" {
  type = string
  default = "b1gqm95h91idg2ffvaluei5la"
}

variable "folder_id" {
  type = string
  default = "b1gab8fuc9s78vrid6au"
}

variable "zone" {
  type = string
  default = "ru-central1-a"
}