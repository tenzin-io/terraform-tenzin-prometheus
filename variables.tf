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
