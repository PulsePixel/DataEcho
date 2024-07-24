# Configure the Terraform backend to use an S3 bucket
terraform {
  required_providers {
    aws = {
      version = ">= 5.39.0"
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "dataecho"
    key    = "terraform/state/dataecho/echostream/main.tfstate"
    region = "us-west-1"
  }
}
