variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs"
  type        = list(string)
}

variable "ebs_csi_role_arn" {
  description = "IAM Role ARN for the EBS CSI driver"
  type        = string
}

variable "eks_managed_node_groups" {
  description = "EKS managed node groups"
  type        = map(object({
    name          = string
    instance_types = list(string)
    min_size      = number
    max_size      = number
    desired_size  = number
  }))
}
