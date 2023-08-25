#
# Prometheus operator
#

resource "helm_release" "prometheus" {
  name             = "prometheus"
  chart            = "kube-prometheus-stack"
  repository       = "https://prometheus-community.github.io/helm-charts"
  version          = "48.4.0"
  namespace        = "monitoring"
  create_namespace = true
  values = [
    templatefile("${path.module}/templates/prometheus-values.yaml", {
      alert_receiver_name        = var.alert_receiver_name
      alert_receiver_url         = var.alert_receiver_url
      alert_receiver_username    = var.alert_receiver_username
      alert_receiver_password    = var.alert_receiver_password
      prometheus_volume_size     = var.prometheus_volume_size
      metrics_retention_duration = var.metrics_retention_duration
      metrics_scrape_interval    = var.metrics_scrape_interval
      kubernetes_cluster_name    = var.kubernetes_cluster_name
    })
  ]
}

#
# metrics server
#

resource "helm_release" "metrics_server" {
  depends_on = [helm_release.prometheus]
  name       = "metrics-server"
  chart      = "metrics-server"
  version    = "3.11.0"
  repository = "https://kubernetes-sigs.github.io/metrics-server/"
  namespace  = "monitoring"

  set {
    name  = "metrics.enabled"
    value = true
  }
  set {
    name  = "args"
    value = "{--kubelet-insecure-tls}"
  }

  set {
    name  = "servicemonitor.enabled"
    value = true
  }

  set {
    name  = "servicemonitor.interval"
    value = "15s"
  }

  set {
    name  = "servicemonitor.additionallabels.release"
    value = "prometheus"
  }

}
