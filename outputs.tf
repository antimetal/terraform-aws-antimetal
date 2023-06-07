output "role_arn" {
  value = aws_cloudformation_stack.antimetal_role.outputs.RoleArn
  description = "Paste this in the corresponding field on the Antimetal website"
}
