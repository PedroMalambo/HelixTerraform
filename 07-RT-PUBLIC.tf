########## Creacion de Route Table Publica #########
resource "aws_route_table" "helix-rt-public" {
  vpc_id = data.aws_vpc.info-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.igw_vpc.id
  }
  tags = {
    Name = "${var.public_rt_name}"
  }
}

########## Asociaacion de las subredes publicas en las RT Publicas #########
resource "aws_route_table_association" "public-rt-assocciation-1a" {
  route_table_id = aws_route_table.helix-rt-public.id
  subnet_id      = data.aws_subnet.public-subnet-1a.id 
}

resource "aws_route_table_association" "public-rt-assocciation-1b" {
  route_table_id = aws_route_table.helix-rt-public.id
  subnet_id      = data.aws_subnet.public-subnet-1b.id 
}

resource "aws_route_table_association" "public-rt-assocciation-1c" {
  route_table_id = aws_route_table.helix-rt-public.id
  subnet_id      = data.aws_subnet.public-subnet-1c.id 
}