# Configure the Terraform backend to use an S3 bucket
terraform {
  required_providers {
    aws = {
      version = ">= 5.39.0"
      source  = "hashicorp/aws"
    }
  }

  cloud {
    organization = "PulsePixel"
    workspaces {
      project = "stream_monitor"
      tags    = ["stream_monitor"]
    }
  }
}
