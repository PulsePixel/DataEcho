# Define the provider
provider "aws" {
  region = var.region
}

# Create a minimal cost EC2 instance
resource "aws_instance" "dataecho_echo_stream_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name       = var.instance_name
    Updated_At = timestamp()
  }
}

# Output the instance ID and public IP
output "instance_id" {
  value = aws_instance.dataecho_echo_stream_ec2.id
}

output "instance_public_ip" {
  value = aws_instance.dataecho_echo_stream_ec2.public_ip
}
