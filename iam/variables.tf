variable "account_id" {
  type = string
}

variable "breakglass_role_name" {
  type    = string
  default = "BreakGlassRole"
}

variable "readonly_role_name" {
  type    = string
  default = "ReadOnlyRole"
}

variable "secops_role_name" {
  type    = string
  default = "SecurityOperationsRole"
}

variable "breakglass_policy_path" {
  type = string
}

variable "readonly_policy_path" {
  type = string
}

variable "secops_policy_path" {
  type = string
}
