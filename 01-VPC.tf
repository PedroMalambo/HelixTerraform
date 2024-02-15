########## Creacion de VPC #########

resource "aws_vpc" "vpc-helix" {
  cidr_block                     = "${var.vpc_cidr}"
  instance_tenancy               = "${var.instance_tenancy}"
  enable_dns_hostnames           = var.enable_dns_hostnames

  tags = {
    Name = "${var.vpc_name}"
  }
}