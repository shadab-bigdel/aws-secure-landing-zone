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
