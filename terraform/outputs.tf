output "organization_id" {
  value = module.organization.organization_id
}

output "created_accounts" {
  value = module.accounts.account_ids
}

output "security_ou_id" {
  value = module.organization.security_ou_id
}

output "infrastructure_ou_id" {
  value = module.organization.infrastructure_ou_id
}

output "workloads_ou_id" {
  value = module.organization.workloads_ou_id
}

