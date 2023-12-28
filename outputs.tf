
output "IAM-Details" {
  value = {
    username = aws_iam_user.user.name
    arn      = aws_iam_user.user.arn
    path        = aws_iam_user.user.path
    permissions_boundary = aws_iam_user.user.permissions_boundary
  }
  description = "IAM user details"
}

output "web-server-instance-details" {
  value = {
	public_ip  = aws_instance.web-server-instance.public_ip
        private_ip = aws_instance.web-server-instance.private_ip
      }
  description = "Public and Private IP addresses of web-server-instance"
}

output "db-server-instance-details" {
  value = {
	public_ip  = aws_instance.db-server-instance.public_ip
        private_ip = aws_instance.db-server-instance.private_ip
      }
  description = "Public and Private IP addresses of db-server-instance"
}
