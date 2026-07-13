
terraform {
  required_version = ">= 1.0"

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
