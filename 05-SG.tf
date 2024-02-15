########## Creacion de grupos de seguridad para VPC #########

resource "aws_security_group" "helix-sg-internet" {
  name        = "${var.sg_name_internet}"
  vpc_id      = data.aws_vpc.info-vpc.id
  description = "${var.sg_description_internet}" 

  ingress {
    description = "Permitir todo el trafico entrante"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Permitir todo el trafico entrante"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description      = "Permitir todo el trafico saliente" 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    name = "${var.sg_name_internet}"
  }
}

resource "aws_security_group" "helix-sg-SSH-RDP" {
  name        = "${var.sg_name_SSH}"
  vpc_id      = data.aws_vpc.info-vpc.id
  description = "${var.sg_description_SSH}" 

  ingress {
    description = "ETB (Apartamento)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["186.29.64.81/32"]
  }

  egress {
    description      = "Permitir todo el trafico saliente" 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description = "ETB (Apartamento)"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["186.29.64.81/32"]
  }

  egress {
    description      = "Permitir todo el trafico saliente" 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    name = "${var.sg_name_SSH}"
  }
}


resource "aws_security_group" "helix-sg-db" {
  name        = "${var.sg_name_DB}"
  vpc_id      = data.aws_vpc.info-vpc.id
  description = "${var.sg_description_DB}"

  ingress {
    description = "ETB (Apartamento)"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["186.29.64.81/32"]
  }

  ingress {
    description = "ETB (Apartamento)"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["186.29.64.81/32"]
  }

  ingress {
    description = "ETB (Apartamento)"
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["186.29.64.81/32"]
  }

  egress {
    description      = "Permitir todo el trafico saliente" 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    name = "${var.sg_name_DB}"
  }
}