variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "iam_role_name" {
  description = "Name of the IAM role"
  default     = "stream-monitor-viewer-role"
}