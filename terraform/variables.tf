variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "eu-west-2"
}

variable "bucket_name" {
  description = "The S3 Bucket Name"
  type        = string
  default     = "dummy"
}

variable "AWS_profile" {
  description = "AWS CLI profile name"
  type        = string
  default     = "myprofile"
}
