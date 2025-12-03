resource "aws_organizations_account" "account" {
  name  = var.name
  email = var.email
}

output "account_id" {
  value = aws_organizations_account.account.id
}
