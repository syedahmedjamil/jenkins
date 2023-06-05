output "ec2_public_ip" {
  description = "EC2 public ip"
  value       = aws_instance.dev.public_ip
}

output "aws_efs_id" {
  description = "aws efs id"
  value       = aws_efs_file_system.efs1.id
}
