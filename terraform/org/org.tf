resource "aws_organizations_organization" "org" {
  feature_set = "ALL"
}

output "organization_id" {
  value = aws_organizations_organization.org.id
}
