output "iam_role_policy_attachments_exclusives_policy_arns" {
  description = "Map of policy_arns values across all iam_role_policy_attachments_exclusives, keyed the same as var.iam_role_policy_attachments_exclusives"
  value       = { for k, v in aws_iam_role_policy_attachments_exclusive.iam_role_policy_attachments_exclusives : k => v.policy_arns if v.policy_arns != null && length(v.policy_arns) > 0 }
}
output "iam_role_policy_attachments_exclusives_role_name" {
  description = "Map of role_name values across all iam_role_policy_attachments_exclusives, keyed the same as var.iam_role_policy_attachments_exclusives"
  value       = { for k, v in aws_iam_role_policy_attachments_exclusive.iam_role_policy_attachments_exclusives : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}

