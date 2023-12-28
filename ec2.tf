resource "aws_instance" "web-server-instance" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.kp.key_name
  subnet_id     = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  associate_public_ip_address = true
  user_data = <<-EOF
#!/bin/bash
apt-get update
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2 
EOF

  tags = {
    Name = "Assignment4-EC2-1"
  }
}

resource "aws_instance" "db-server-instance" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.kp.key_name
  subnet_id     = aws_subnet.public_subnet_2.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  associate_public_ip_address = true
  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install wget software-properties-common dirmngr ca-certificates apt-transport-https -y
	      apt install mariadb-server mariadb-client -y
	      systemctl start mariadb
              EOF

  tags = {
    Name = "Assignment4-EC2-2"
  }
}
