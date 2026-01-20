# Terraform module for ECS Cluster

This module is used to create an ECS cluster along with the necessary
IAM roles to function.

## What this does

- Create ECS cluster named after `app_name` and `app_env`
- Create IAM roles and policies for ECS services and instances

This module is published in [Terraform Registry](https://registry.terraform.io/modules/sil-org/ecs-cluster/aws/latest).

## Usage Example

```hcl
module "ecscluster" {
  source  = "sil-org/ecs-cluster/aws"
  version = "~> 0.1.0"
  
  app_name = "${var.app_name}"
  app_env  = "${var.app_env}"
}

provider "aws" {
  region = "us-east-1"
}
```
