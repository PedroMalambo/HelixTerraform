##########################
# Obtener datos de la VPC
##########################
data "aws_vpc" "info-vpc" {
  filter {
    name   = "tag:Name"
    values = ["vpc-helix"]
  }
}

######################
# Obtener datos de EC2
######################

data "aws_ami" "aws-image-helix" {
  most_recent =  true 
  
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["amazon"]
}

data "aws_subnet" "helix-subnet-public-1a" {
  filter {
    name   = "tag:Name"
    values = ["helix-subnet-public-1a"]
  }
}

######################
# Obtener datos de IGW
######################
data "aws_internet_gateway" "igw_vpc" {
  filter {
    name   = "attachment.vpc-id"
    values = [data.aws_vpc.info-vpc.id]
  }
}

########################################
# Obtener datos de las subnets publicas
########################################

data "aws_subnet" "public-subnet-1a" {
   filter {
    name = "vpc-id"
    values = [data.aws_vpc.info-vpc.id]
   }
   filter {
     name ="tag:Name"
     values = ["helix-subnet-public-1a"]
   }  
}

data "aws_subnet" "public-subnet-1b" {
   filter {
    name = "vpc-id"
    values = [data.aws_vpc.info-vpc.id]
   }
   filter {
     name ="tag:Name"
     values = ["helix-subnet-public-1b"]
   }  
}

data "aws_subnet" "public-subnet-1c" {
   filter {
    name = "vpc-id"
    values = [data.aws_vpc.info-vpc.id]
   }
   filter {
     name ="tag:Name"
     values = ["helix-subnet-public-1c"]
   }  
}

########################################
# Obtener datos de las subnets privadas
########################################

data "aws_subnet" "private-subnet-1a" {
   filter {
    name = "vpc-id"
    values = [data.aws_vpc.info-vpc.id]
   }
   filter {
     name ="tag:Name"
     values = ["helix-subnet-private-1a"]
   }  
}

data "aws_subnet" "private-subnet-1b" {
   filter {
    name = "vpc-id"
    values = [data.aws_vpc.info-vpc.id]
   }
   filter {
     name ="tag:Name"
     values = ["helix-subnet-private-1b"]
   }  
}

data "aws_subnet" "private-subnet-1c" {
   filter {
    name = "vpc-id"
    values = [data.aws_vpc.info-vpc.id]
   }
   filter {
     name ="tag:Name"
     values = ["helix-subnet-private-1c"]
   }  
}