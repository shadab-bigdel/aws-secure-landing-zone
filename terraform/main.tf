terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "organization" {
  source = "./org"
}

module "accounts" {
  source = "./accounts"

  root_account_email   = var.root_account_email
  security_account_email = var.security_account_email
  audit_account_email    = var.audit_account_email
}
module "iam" {
  source = "./iam"

  account_id          = module.organization.security_account_id
  breakglass_role_name = "BreakGlassRole"
  readonly_role_name   = "ReadOnlyRole"
  secops_role_name     = "SecurityOperationsRole"

  breakglass_policy_path = "../scp/iam-breakglass.json"
  readonly_policy_path   = "../scp/iam-readonly.json"
  secops_policy_path     = "../scp/iam-security-operations.json"
}

