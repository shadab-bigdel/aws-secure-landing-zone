module "scp_deny_unapproved_regions" {
  source   = "../modules/scp"
  name     = "deny-unapproved-regions"
  file_path = "../../scp/deny-unapproved-regions.json"
}

module "scp_deny_disable_cloudtrail" {
  source   = "../modules/scp"
  name     = "deny-disable-cloudtrail"
  file_path = "../../scp/deny-disable-cloudtrail.json"
}

module "scp_deny_root" {
  source   = "../modules/scp"
  name     = "deny-root"
  file_path = "../../scp/deny-root.json"
}
resource "aws_organizations_policy" "deny_disable_cloudtrail" {
  name        = "deny-disable-cloudtrail"
  description = "Deny disabling CloudTrail"
  type        = "SERVICE_CONTROL_POLICY"
  content     = file("${path.module}/../../scp/deny-disable-cloudtrail.json")
}

resource "aws_organizations_policy" "deny_root" {
  name        = "deny-root"
  description = "Deny root user actions"
  type        = "SERVICE_CONTROL_POLICY"
  content     = file("${path.module}/../../scp/deny-root.json")
}

resource "aws_organizations_policy" "deny_unapproved_regions" {
  name        = "deny-unapproved-regions"
  description = "Deny usage of unapproved regions"
  type        = "SERVICE_CONTROL_POLICY"
  content     = file("${path.module}/../../scp/deny-unapproved-regions.json")
}
resource "aws_organizations_policy_attachment" "cloudtrail_to_security_ou" {
  policy_id = aws_organizations_policy.deny_disable_cloudtrail.id
  target_id = module.organization.security_ou_id
}

resource "aws_organizations_policy_attachment" "root_to_all" {
  policy_id = aws_organizations_policy.deny_root.id
  target_id = module.organization.root_id
}

resource "aws_organizations_policy_attachment" "regions_to_workloads_ou" {
  policy_id = aws_organizations_policy.deny_unapproved_regions.id
  target_id = module.organization.workloads_ou_id
}
