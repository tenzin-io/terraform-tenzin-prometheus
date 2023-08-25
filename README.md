# terraform-tenzin-prometheus
A Terraform module repository to install Prometheus on my home lab Kubernetes clusters.

<!-- BEGIN_TF_DOCS -->


## Resources

| Name | Type |
|------|------|
| [helm_release.metrics_server](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.prometheus](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_receiver_name"></a> [alert\_receiver\_name](#input\_alert\_receiver\_name) | Name of the alertmanager receiver | `string` | `""` | no |
| <a name="input_alert_receiver_password"></a> [alert\_receiver\_password](#input\_alert\_receiver\_password) | Password to use with the alert receiver API | `string` | `""` | no |
| <a name="input_alert_receiver_url"></a> [alert\_receiver\_url](#input\_alert\_receiver\_url) | API endpoint to send webhook alert requests | `string` | `""` | no |
| <a name="input_alert_receiver_username"></a> [alert\_receiver\_username](#input\_alert\_receiver\_username) | Username to use with the alert receiver API | `string` | `""` | no |
<!-- END_TF_DOCS -->