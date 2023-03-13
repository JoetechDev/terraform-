resource "aws_subnet" "private-1a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/18"
  availability_zone = var.az["1a"]

  tags = {
    "Name" = "private-1a"
    "kubernetes.io/role/internal-elb" = "1"  #AZ requiring internal load balancer 
    "kubernetes.io/cluster/demo"      = "owned" #owned == vpc for k8s only  shared== shared with pther resources 

  }
}
resource "aws_subnet" "private-1b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.64.0/18"
  availability_zone = var.az["1b"]

  tags = {
    "Name" = "private-1b"
    # "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}
resource "aws_subnet" "public-1a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.128.0/18"
  availability_zone = var.az["1a"]
  
  tags = {
    "Name" = "public-1a"
    "kubernetes.io/cluster/demo"      = "owned"

  }
}
resource "aws_subnet" "public-1b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.192.0/18"
  availability_zone = var.az["1b"]

  tags = {
    "Name" = "public-1b"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}