resource "aws_vpc" "main" {
 cidr_block = "10.0.0.0/16"

 tags = {
   Name = "devops-assignment-4"
 }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1e"
  map_public_ip_on_launch = true
  tags = {
   Name = "cs423-devops-public-1-assignment4"
 }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1f"
  map_public_ip_on_launch = true
  tags = {
   Name = "cs423-devops-public-2-assignment4"
 }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1e"
  map_public_ip_on_launch = false
  tags = {
   Name = "cs423-devops-private-1-assignment4"
 }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-east-1f"
  map_public_ip_on_launch = false
  tags = {
   Name = "cs423-devops-private-2-assignment4"
 }
}

resource "aws_internet_gateway" "gw" {

 vpc_id = aws_vpc.main.id

 tags = {

   Name = "devops-gw-assignment-4"

 }
}

resource "aws_route_table" "public_rt" {

 vpc_id = aws_vpc.main.id

 route {

   cidr_block = "0.0.0.0/0"

   gateway_id = aws_internet_gateway.gw.id

 }

 tags = {

   Name = "${aws_vpc.main.arn}-public-rt"

 }
}

resource "aws_route_table_association" "public_subnet_asso_1" {

 subnet_id      = aws_subnet.public_subnet_1.id
 route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_subnet_asso_2" {

 subnet_id      = aws_subnet.public_subnet_2.id
 route_table_id = aws_route_table.public_rt.id
}














