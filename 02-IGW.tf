########## Creacion de IGW #########

resource "aws_internet_gateway" "igw-helix" {
  vpc_id = aws_vpc.vpc-helix.id
  tags = {
    Name = "${var.igw_name}"
  }
  depends_on = [
    aws_vpc.vpc-helix
  ]
}