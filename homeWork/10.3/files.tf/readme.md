<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.95.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.ansible-hw](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |
| [yandex_compute_image.vm-image](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Yandex.Cloud ID | `string` | n/a | yes |
| <a name="input_default_zone"></a> [default\_zone](#input\_default\_zone) | Yandex.CLoud default zone | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Yandex.Cloud MyDefault folder ID | `string` | n/a | yes |
| <a name="input_hdd_size"></a> [hdd\_size](#input\_hdd\_size) | Default HDD size in GB | `number` | n/a | yes |
| <a name="input_hdd_type"></a> [hdd\_type](#input\_hdd\_type) | Type of Hard Disk Drive | `string` | n/a | yes |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | Hostname for Virtual machine | <pre>list(object({<br>    hostname = string<br>  }))</pre> | n/a | yes |
| <a name="input_image_family"></a> [image\_family](#input\_image\_family) | OS Image for VM | `string` | n/a | yes |
| <a name="input_network_nat"></a> [network\_nat](#input\_network\_nat) | Enable or disable network NAT | `bool` | n/a | yes |
| <a name="input_platform"></a> [platform](#input\_platform) | Yandex.Cloud platform for VM | `string` | n/a | yes |
| <a name="input_preemptible"></a> [preemptible](#input\_preemptible) | Set VM preemprible or not | `bool` | n/a | yes |
| <a name="input_ram_size"></a> [ram\_size](#input\_ram\_size) | Count RAM Size in GB | `number` | n/a | yes |
| <a name="input_serial_port"></a> [serial\_port](#input\_serial\_port) | Enable or disable serial port on VM | `number` | n/a | yes |
| <a name="input_stop_to_update"></a> [stop\_to\_update](#input\_stop\_to\_update) | Allow stopping VM for updates | `bool` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | OAuth-token | `string` | n/a | yes |
| <a name="input_vcpu_cores"></a> [vcpu\_cores](#input\_vcpu\_cores) | Count of vCPU cores | `number` | n/a | yes |
| <a name="input_vcpu_fraction"></a> [vcpu\_fraction](#input\_vcpu\_fraction) | Using vCPU Resources in % | `number` | n/a | yes |
| <a name="input_yc_subnet_id"></a> [yc\_subnet\_id](#input\_yc\_subnet\_id) | Default YC subnet ID | `string` | n/a | yes |
| <a name="input_yc_vpc_id"></a> [yc\_vpc\_id](#input\_yc\_vpc\_id) | Default YC network ID | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->