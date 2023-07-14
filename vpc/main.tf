provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "actions" {
   cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Class30"
    Team = "DevOps"
    Environment = "Prod"
    Division = "HR"
  }
}

terraform {
  required_version = "1.4.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0" # Optional but recommended in production
    }
  }
  backend "s3" {
    bucket = "myotherclass25bucket"
    key = "prod/terraform.tfstate"
    region = "us-west-2"
  }
}

