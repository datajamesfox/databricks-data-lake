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
  profile = var.AWS_profile
}

resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucket_name
}

resource "aws_s3_object" "bcsv" {
  bucket       = aws_s3_bucket.mybucket.bucket
  key          = "bronze/csv/"
  content_type = "application/x-directory"
}

resource "aws_s3_object" "bdelta" {
  bucket       = aws_s3_bucket.mybucket.bucket
  key          = "bronze/delta/"
  content_type = "application/x-directory"
}

resource "aws_s3_object" "sdelta" {
  bucket       = aws_s3_bucket.mybucket.bucket
  key          = "silver/delta/"
  content_type = "application/x-directory"
}

resource "aws_s3_object" "csv_file" {
  bucket       = aws_s3_bucket.mybucket.bucket
  key          = "bronze/csv/insurance_data.csv"
  source       = "../data/insurance_data.csv"
  content_type = "text/plain"
}
