#################################
# Valores de variable para la VPC
#################################
vpc_cidr             = "95.10.0.0/16"
instance_tenancy     = "default"
enable_dns_hostnames = true
enable_dns_support   = true
vpc_name             = "vpc-helix"

##################################################
# Valores de variables para IGW (Internet Gateway)
##################################################
igw_name = "igw-helix"

####################################################
# Valores de variables para los grupos de seguridad
####################################################
sg_name_internet        = "helix-sg-internet"
sg_description_internet = "Grupo de seguridad para la conexion hacia INTERNET"

sg_name_SSH        = "helix-sg-SSH-RDP"
sg_description_SSH = "Grupo de seguridad para la conexion via SSH"

sg_name_DB        = "helix-sg-DB"
sg_description_DB = "Grupo de seguridad para la conexion hacia DBs"

#################
# Valores de EC2
#################
name_ec2 = "helix-ec2-test"

################################
# Valores de variables key pairs
################################
key_name = "helix-private-key"

##############################################
# Valores de variables para las tablas de ruta
##############################################
public_rt_name = "helix-rt-public"
private_rt_name = "helix-rt-private"