locals {
  ssh_key = "ubuntu:${file("/home/rodney/.ssh/id_ed25519.pub")}"
}
