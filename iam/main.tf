resource "aws_iam_role" "breakglass" {
  name               = var.breakglass_role_name
  assume_role_policy = file(var.breakglass_policy_path)
}

resource "aws_iam_role" "readonly" {
  name               = var.readonly_role_name
  assume_role_policy = file(var.readonly_policy_path)
}

resource "aws_iam_role" "secops" {
  name               = var.secops_role_name
  assume_role_policy = file(var.secops_policy_path)
}
