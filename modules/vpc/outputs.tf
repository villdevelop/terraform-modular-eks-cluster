output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "The private subnet IDs"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "The public subnet IDs"
  value       = module.vpc.public_subnets
}
