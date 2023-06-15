### -------- Create Nerwork -------- ###
/*
resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

### -------- Create Subnet -------- ###

resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}*/

module "vpc_dev" {
  source       = "./vpc"
  vpc_name     = var.vpc_name
  default_zone = var.default_zone
  default_cidr = var.default_cidr
}

### -------- Create VM by remote module -------- ###

module "test-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "develop"
  network_id     = module.vpc_dev.yc_vpc_id
  subnet_zones   = [var.default_zone]
  subnet_ids     = [module.vpc_dev.yc_subnet_id]
  instance_name  = "web"
  instance_count = 1
  image_family   = "ubuntu-2004-lts"
  public_ip      = true

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = 1
  }
}


### -------- Transfer cloud-config file template -------- ###

data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")
  vars = {
    username       = "ubuntu"
    ssh_public_key = file(var.vms_ssh_root_key)
  }
}
