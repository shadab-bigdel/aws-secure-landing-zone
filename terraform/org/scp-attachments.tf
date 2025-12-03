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
