variable "alert_receiver_name" {
  default     = ""
  type        = string
  description = "Name of the alertmanager receiver"
}

variable "alert_receiver_url" {
  default     = ""
  type        = string
  description = "API endpoint to send webhook alert requests"
}

variable "alert_receiver_username" {
  default     = ""
  type        = string
  description = "Username to use with the alert receiver API"
}

variable "alert_receiver_password" {
  default     = ""
  type        = string
  sensitive   = true
  description = "Password to use with the alert receiver API"
}

variable "metrics_retention_duration" {
  default     = "10d"
  type        = string
  description = "The collected metrics will be available for this duration."
}

variable "metrics_scrape_interval" {
  default     = "30s"
  type        = string
  description = "The frequency at which to collect metrics."
}

variable "prometheus_volume_size" {
  default     = "10Gi"
  type        = string
  description = "The volume size for Prometheus persistent volume."
}

variable "kubernetes_cluster_name" {
  default     = "kubernetes"
  type        = string
  description = "Add a label to the metrics identify the cluster name."
}

variable "thanos_ingress_host" {
  default     = ""
  type        = string
  description = "The Thanos sidecar hostname place on ingress."
}

variable "certificate_issuer_name" {
  type        = string
  description = "The cert-manager certificate issuer name."
}
