resource "aws_organizations_policy" "scp" {
  name        = var.name
  description = "SCP: ${var.name}"
  type        = "SERVICE_CONTROL_POLICY"

  content = file(var.file_path)
}

output "policy_id" {
  value = aws_organizations_policy.scp.id
}
