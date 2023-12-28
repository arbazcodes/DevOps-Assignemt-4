provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_iam_user" "user" {
  name = "terraform-cs423-devops"
}

resource "aws_iam_user_policy_attachment" "admin-policy" {
  user       = aws_iam_user.user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_access_key" "access-key" {
  user = aws_iam_user.user.name
}

