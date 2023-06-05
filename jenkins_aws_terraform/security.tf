resource "aws_security_group" "sg1" {
  vpc_id = aws_vpc.vpc1.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
    for_each = var.SECURITY_GROUP_PORTS
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name        = "${var.PROJECT_NAME}.sg1"
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_security_group" "sg2-efs" {
  vpc_id = aws_vpc.vpc1.id

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = -1
    security_groups = [aws_security_group.sg1.id]
  }

  ingress {
    from_port       = 2049
    to_port         = 2049
    protocol        = "tcp"
    security_groups = [aws_security_group.sg1.id]
  }

  tags = {
    Name        = "${var.PROJECT_NAME}.sg2-efs"
    Terraform   = "true"
    Environment = "dev"
  }
}
