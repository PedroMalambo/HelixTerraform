########## Creacion de Route Table Privada #########
resource "aws_route_table" "helix-rt-private" {
  vpc_id = data.aws_vpc.info-vpc.id
  tags = {
    Name = "${var.private_rt_name}"
  }
}

########## Asociaacion de las subredes publicas en las RT Privadas #########
resource "aws_route_table_association" "private-rt-assocciation-1a" {
  route_table_id = aws_route_table.helix-rt-private.id 
  subnet_id      = data.aws_subnet.private-subnet-1a.id
}

resource "aws_route_table_association" "private-rt-assocciation-1b" {
  route_table_id = aws_route_table.helix-rt-private.id 
  subnet_id      = data.aws_subnet.private-subnet-1b.id
}

resource "aws_route_table_association" "private-rt-assocciation-1c" {
  route_table_id = aws_route_table.helix-rt-private.id 
  subnet_id      = data.aws_subnet.private-subnet-1c.id
}