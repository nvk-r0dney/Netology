module "deb" {
  source         = "./deb"
  env_name       = "default"
  network_id     = var.yc_vpc_id
  subnet_zone    = var.default_zone
  subnet_id      = var.yc_subnet_id
  instance_name  = "deb"
  instance_count = 1
  image_family   = "ubuntu-2004-lts"
  public_ip      = true
}

module "el" {
  source         = "./el"
  env_name       = "default"
  network_id     = var.yc_vpc_id
  subnet_zone    = var.default_zone
  subnet_id      = var.yc_subnet_id
  instance_name  = "centos"
  instance_count = 1
  image_family   = "centos-7"
  public_ip      = true
}

module "fedora" {
  source         = "./fedora"
  env_name       = "default"
  network_id     = var.yc_vpc_id
  subnet_zone    = var.default_zone
  subnet_id      = var.yc_subnet_id
  instance_name  = "fedora"
  instance_count = 1
  image_family   = "fedora-35"
  public_ip      = true
}


