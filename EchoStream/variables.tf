variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "instance_name" {
  description = "Provisioned by Terraform With S3 Backend For Bug-Bash For DataEcho For EchoStream"
  default     = "DataEcho-EchoStream-BugBash"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-03ed1381c73a5660e" # Amazon Linux 2023 AMI
  
}