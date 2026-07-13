
module "minimal" {
  source = "../"
}

module "full" {
  source = "../"

  app_name     = ""
  app_env      = ""
  amiFilter    = ""
  cluster_name = ""
  tags         = {}
}

output "ecs_cluster_id" {
  value = module.minimal.ecs_cluster_id
}

output "ecs_cluster_name" {
  value = module.minimal.ecs_cluster_name
}

output "ecs_instance_role_id" {
  value = module.minimal.ecs_instance_role_id
}

output "ecs_instance_profile_id" {
  value = module.minimal.ecs_instance_profile_id
}

output "ecsServiceRole_arn" {
  value = module.minimal.ecsServiceRole_arn
}

output "ecsInstanceRole_arn" {
  value = module.minimal.ecsInstanceRole_arn
}

output "ami_id" {
  value = module.minimal.ami_id
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 0.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0, < 7.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.1.0, < 4.0.0"
    }
  }
}
