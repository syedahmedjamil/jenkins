variable "PROJECT_NAME" {
  default = "Jenkins"
}

variable "VPC_CIDR_BLOCK" {
  default = "10.0.0.0/16"
}

variable "SUBNET_CIDR_BLOCK" {
  default = "10.0.1.0/24"
}

variable "ZONE" {
  default = "ap-south-1a"
}

variable "SECURITY_GROUP_PORTS" {
  type = list(number)
  default = [ 22, 8080 ]
}

variable "PUBLIC_KEY_PATH" {
  default = "~/.ssh/id_rsa.pub"
}

variable "PRIVATE_KEY_PATH" {
  default = "~/.ssh/id_rsa"
}

variable "EC2_USER" {
  default = "ubuntu"
}