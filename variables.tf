variable "region" {
  description = "AWS Region"
  type        = string
}

variable "public_subnet_tags" {
  description = "Tags for the public subnets"
  type        = map(string)
  default     = {
    "kubernetes.io/role/elb" = 1
  }
}

variable "private_subnet_tags" {
  description = "Tags for the private subnets"
  type        = map(string)
  default     = {
    "kubernetes.io/role/internal-elb" = 1
  }
}

variable "eks_managed_node_groups" {
  description = "EKS Managed Node Groups Configuration"
  type        = map(object({
    name          = string
    instance_types = list(string)
    min_size      = number
    max_size      = number
    desired_size  = number
  }))
  default = {
    one = {
      name           = "node-group-1"
      instance_types = ["t3.small"]
      min_size       = 1
      max_size       = 3
      desired_size   = 2
    }
    two = {
      name           = "node-group-2"
      instance_types = ["t3.small"]
      min_size       = 1
      max_size       = 2
      desired_size   = 1
    }
  }
}
