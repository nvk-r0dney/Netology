data "yandex_compute_image" "nat-host" {
  image_id = "fd80mrhj8fl2oe87o4e1"
}

data "yandex_compute_image" "users-host" {
  family = "ubuntu-2004-lts"
}
