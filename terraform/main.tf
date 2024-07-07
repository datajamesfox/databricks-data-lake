terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
  profile = "myprofile"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucket_name
}
