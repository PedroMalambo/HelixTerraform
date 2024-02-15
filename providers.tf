terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.36.0"
      }
    }
}

provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY_ID}"
  secret_key = "${var.AWS_SECRET_ACCESS_KEY}"
  region = "${var.aws_region}"
}