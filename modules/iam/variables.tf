variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "oidc_provider" {
  description = "OIDC Provider for the EKS Cluster"
  type        = string
}
