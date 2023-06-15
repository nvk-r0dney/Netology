<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.develop](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.develop](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_cidr"></a> [default\_cidr](#input\_default\_cidr) | Yandex.Cloud Subnets | `list(string)` | n/a | yes |
| <a name="input_default_zone"></a> [default\_zone](#input\_default\_zone) | Yandex.CLoud default zone | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC network name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_yc_subnet_id"></a> [yc\_subnet\_id](#output\_yc\_subnet\_id) | n/a |
| <a name="output_yc_vpc_id"></a> [yc\_vpc\_id](#output\_yc\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->