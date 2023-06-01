output "List_of_VMs" {
  value = [
    {
      name = yandex_compute_instance.count-vm.0.name
      id   = yandex_compute_instance.count-vm.0.id
      fqdn = yandex_compute_instance.count-vm.0.fqdn
    },
    {
      name = yandex_compute_instance.count-vm.1.name
      id   = yandex_compute_instance.count-vm.1.id
      fqdn = yandex_compute_instance.count-vm.1.fqdn
    },
    {
      name = yandex_compute_instance.for-each-vm.0.name
      id   = yandex_compute_instance.for-each-vm.0.id
      fqdn = yandex_compute_instance.for-each-vm.0.fqdn
    },
    {
      name = yandex_compute_instance.for-each-vm.1.name
      id   = yandex_compute_instance.for-each-vm.1.id
      fqdn = yandex_compute_instance.for-each-vm.1.fqdn
    },
    {
      name = yandex_compute_instance.vm-disk.name
      id   = yandex_compute_instance.vm-disk.id
      fqdn = yandex_compute_instance.vm-disk.fqdn
    }
  ]
}
