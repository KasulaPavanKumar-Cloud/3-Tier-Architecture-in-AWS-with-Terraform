
# -----------------------
# Subnets
# -----------------------
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.project_name}-Public-Subnet"
  }
}

resource "aws_subnet" "private_app" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_app_subnet_cidr
  availability_zone = var.availability_zone_1
  tags = {
    Name = "${var.project_name}-Private-App-Subnet"
  }
}

resource "aws_subnet" "private_db" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_db_subnet_cidr
  availability_zone = var.availability_zone_2
  tags = {
    Name = "${var.project_name}-Private-DB-Subnet"
  }
}
