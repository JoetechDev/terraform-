resource "aws_eip" "nat" {
    vpc = true
    tags = {
      "Name" = "nat"
    }
  }
  resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-1a.id

  tags = {
    Name = "nat"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}