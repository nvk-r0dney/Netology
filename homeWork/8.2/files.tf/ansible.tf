resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/hosts.tftpl",
    {
      vm_web = yandex_compute_instance.count-vm
      vm_db  = yandex_compute_instance.for-each-vm
      vm_storage = {
        name   = yandex_compute_instance.vm-disk.name
        nat_ip = yandex_compute_instance.vm-disk.network_interface.0.nat_ip_address
      }
    }
  )
  filename = "${abspath(path.module)}/inventory"
}
