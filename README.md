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
| <a name="input_certificate_issuer_name"></a> [certificate\_issuer\_name](#input\_certificate\_issuer\_name) | The cert-manager certificate issuer name. | `string` | n/a | yes |
| <a name="input_kubernetes_cluster_name"></a> [kubernetes\_cluster\_name](#input\_kubernetes\_cluster\_name) | Add a label to the metrics identify the cluster name. | `string` | `"kubernetes"` | no |
| <a name="input_metrics_retention_duration"></a> [metrics\_retention\_duration](#input\_metrics\_retention\_duration) | The collected metrics will be available for this duration. | `string` | `"10d"` | no |
| <a name="input_metrics_scrape_interval"></a> [metrics\_scrape\_interval](#input\_metrics\_scrape\_interval) | The frequency at which to collect metrics. | `string` | `"30s"` | no |
| <a name="input_prometheus_volume_size"></a> [prometheus\_volume\_size](#input\_prometheus\_volume\_size) | The volume size for Prometheus persistent volume. | `string` | `"10Gi"` | no |
| <a name="input_thanos_ingress_host"></a> [thanos\_ingress\_host](#input\_thanos\_ingress\_host) | The Thanos sidecar hostname place on ingress. | `string` | `""` | no |
<!-- END_TF_DOCS -->