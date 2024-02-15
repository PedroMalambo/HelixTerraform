#################################
# Variables de control de ACCESO
#################################

variable "AWS_ACCESS_KEY_ID" {
  description = "Access key para la nube de AWS"
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "Secrect Key para la nube de AWS"
  type = string
}

variable "aws_region" {
  description = "Region por defecto para la nube de AWS"
  type = string
}

###################################
# Variables para la creacion de VPC
###################################

variable "vpc_cidr" {
  description = "CDR para la VPC"
  type = string
}

variable "instance_tenancy" {
  description = "Tenencia de los componentes a desplegar en esta VPC"
  type = string
}

variable "enable_dns_hostnames" {
  description = "Habilitacion DNS hostaname para VPC"
  type = bool
}

variable "enable_dns_support" {
  description = "Habilitar soporte DNS para la VPC"
  type = bool
}

variable "vpc_name" {
  description = "Nombre para la VPC"
  type = string
}

#######################################
# Variables para IGW (Internet Gateway)
#######################################

variable "igw_name" {
  description = "Nombre para el IGW de la VPC"
  type = string
}

#################################################
# Variables de los grupos de seguridad de la VPC
#################################################

variable "sg_name_internet" {
  description = "Nombre del grupo de seguridad y TAG NAME"
  type        = string
}

variable "sg_description_internet" {
  description = "Description para el grupo de seguridad"
  type        = string
}

variable "sg_name_SSH" {
  description = "Nombre del grupo de seguridad y TAG NAME"
  type        = string
}

variable "sg_description_SSH" {
  description = "Description para el grupo de seguridad"
  type        = string
}

variable "sg_name_DB" {
  description = "Nombre del grupo de seguridad y TAG NAME"
  type        = string
}

variable "sg_description_DB" {
  description = "Description para el grupo de seguridad"
  type        = string
}

###################
# Variables de EC2
###################

variable "name_ec2" {
  description = "Nombre de la instancia EC2"
  type        = string
}

############################
# Variables de las key pairs
############################

variable "key_name" {
  description = "Nombre de la llave"
  type        = string 
}

#################################
# Variables de las tablas de ruta
#################################

variable "public_rt_name" {
  description = "Nombre del TAG Name para la RT publica"
  type = string
}

variable "private_rt_name" {
  description = "Nombre del TAG Name para la RT publica"
  type = string
}