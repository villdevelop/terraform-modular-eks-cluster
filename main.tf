provider "aws" {
  region = var.region
}

# Call the VPC module
module "vpc" {
  source  = "./modules/vpc"

  vpc_name            = "eks-cluster-vpc"
  vpc_cidr_block      = "10.0.0.0/16"
  public_subnet_tags  = var.public_subnet_tags
  private_subnet_tags = var.private_subnet_tags
}

# Call the EKS module
module "eks" {
  source = "./modules/eks"

  vpc_id            = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnets
  ebs_csi_role_arn  = module.iam.irsa_ebs_csi_role_arn

  eks_managed_node_groups = var.eks_managed_node_groups
}

# Call the IAM module for the EBS CSI driver
module "iam" {
  source = "./modules/iam"

  eks_cluster_name = module.eks.cluster_name
  oidc_provider    = module.eks.oidc_provider
}
