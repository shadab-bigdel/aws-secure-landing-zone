module "security_account" {
  source = "../modules/account"

  name  = "security"
  email = var.security_account_email
}

module "audit_account" {
  source = "../modules/account"

  name  = "audit"
  email = var.audit_account_email
}

module "root_account" {
  source = "../modules/account"

  name  = "root"
  email = var.root_account_email
}

output "account_ids" {
  value = {
    security = module.security_account.account_id
    audit    = module.audit_account.account_id
    root     = module.root_account.account_id
  }
}
