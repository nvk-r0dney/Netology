locals {
  ssh_key = "centos:${file("~/.ssh/id_ed25519.pub")}"
}
