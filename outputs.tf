output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "The IDs of the private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "The IDs of the public subnets"
  value       = module.vpc.public_subnets
}

output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_name
}

output "eks_oidc_provider" {
  description = "The OIDC provider URL for the EKS cluster"
  value       = module.eks.oidc_provider
}

output "irsa_ebs_csi_role_arn" {
  description = "The IAM Role ARN for the EBS CSI driver"
  value       = module.iam.irsa_ebs_csi_role_arn
}
