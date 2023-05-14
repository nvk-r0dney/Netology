terraform {
  required_version = "1.4.6"
  required_providers {
    vmworkstation = {
      source  = "elsudano/vmworkstation"
      version = "1.0.3"
    }
  }
}

resource "vmworkstation_vm" "test_machine" {
  sourceid     = var.vm_sourceid
  denomination = var.vm_denomination
  description  = var.vm_description
  path         = var.vm_path
  processors   = 2
  memory       = 2
}
