
# -----------------------
# NAT Gateway + Elastic IP
# -----------------------
resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "${var.project_name}-NAT"
  }
  depends_on = [aws_internet_gateway.igw]
}
