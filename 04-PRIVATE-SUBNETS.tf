########## Creacion de subredes privadas para VPC #########

locals {
  private_subnets = {
    "subnet_1a" = {nombre="helix-subnet-private-1a", bloque_cidr="95.10.0.0/24", zona="us-east-1a"}
    "subnet_1b" = {nombre="helix-subnet-private-1b", bloque_cidr="95.10.2.0/24", zona="us-east-1b"}
    "subnet_1c" = {nombre="helix-subnet-private-1c", bloque_cidr="95.10.4.0/24", zona="us-east-1c"}
  }
}

resource "aws_subnet" "private" {
  for_each = local.private_subnets

  vpc_id                  = aws_vpc.vpc-helix.id
  cidr_block              = each.value.bloque_cidr
  availability_zone       = each.value.zona
  map_public_ip_on_launch = false


  tags = {
    Name    = each.value.nombre
    Private = "True"
  }
}