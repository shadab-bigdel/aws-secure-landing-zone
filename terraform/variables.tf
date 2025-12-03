variable "region" {
  type        = string
  description = "AWS region"
  default     = "eu-central-1"
}

variable "root_account_email" {
  type        = string
  description = "Root account email"
}

variable "security_account_email" {
  type        = string
  description = "Security account email"
}

variable "audit_account_email" {
  type        = string
  description = "Audit account email"
}
