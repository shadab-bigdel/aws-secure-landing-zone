output "breakglass_role_arn" {
  value = aws_iam_role.breakglass.arn
}

output "readonly_role_arn" {
  value = aws_iam_role.readonly.arn
}

output "secops_role_arn" {
  value = aws_iam_role.secops.arn
}
