output "irsa_ebs_csi_role_arn" {
  description = "The IAM Role ARN for the EBS CSI driver"
  value       = module.irsa-ebs-csi.iam_role_arn
}
