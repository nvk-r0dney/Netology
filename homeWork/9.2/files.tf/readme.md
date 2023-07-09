<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.92.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.test-vm](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |
| [yandex_compute_image.os-image-family](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Yandex.Cloud ID | `string` | n/a | yes |
| <a name="input_default_zone"></a> [default\_zone](#input\_default\_zone) | Yandex.CLoud default zone | `string` | `"ru-central1-a"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Yandex.Cloud MyDefault folder ID | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | OAuth-token | `string` | n/a | yes |
| <a name="input_yc_subnet_id"></a> [yc\_subnet\_id](#input\_yc\_subnet\_id) | Default YC subnet ID | `string` | n/a | yes |
| <a name="input_yc_vpc_id"></a> [yc\_vpc\_id](#input\_yc\_vpc\_id) | Default YC network ID | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->