########## Creacion de subredes publicas para VPC #########

locals {
  public_subnets = {
    "subnet_1a" = {nombre="helix-subnet-public-1a", bloque_cidr="95.10.1.0/24", zona="us-east-1a"}
    "subnet_1b" = {nombre="helix-subnet-public-1b", bloque_cidr="95.10.3.0/24", zona="us-east-1b"}
    "subnet_1c" = {nombre="helix-subnet-public-1c", bloque_cidr="95.10.5.0/24", zona="us-east-1c"}
  }
}

resource "aws_subnet" "public" {
  for_each = local.public_subnets

  vpc_id                             = aws_vpc.vpc-helix.id
  cidr_block                         = each.value.bloque_cidr
  availability_zone                  = each.value.zona
  map_public_ip_on_launch            = true

  tags = {
    Name   = each.value.nombre
    Private = "false"
  }

}