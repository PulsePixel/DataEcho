# Define the provider
provider "aws" {
  region = var.region
}

# Create an IAM role
resource "aws_iam_role" "stream-monitor-viewer-role" {
  name = var.iam_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      },
    ]
  })


  tags = {
    createdBy     = "terraform"
    createdFor    = "tf-migrate bug bash"
    terraformTime = "${timestamp()}"
    CanDelete     = "true"
  }
}

# Attach a policy to the IAM role
resource "aws_iam_role_policy_attachment" "stream-monitor-s3-viewer-role-policy" {
  role       = aws_iam_role.stream-monitor-viewer-role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

# Output the role ARN
output "role_arn" {
  value = aws_iam_role.stream-monitor-viewer-role
}
