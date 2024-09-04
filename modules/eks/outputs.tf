output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_name
}

output "oidc_provider" {
  description = "The OIDC provider URL for the EKS cluster"
  value       = module.eks.oidc_provider
}
