terraform {
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = var.region
}

variable "region" { default = "us-east-1" }

# Ejemplo (inseguro para prácticas): security group con puerto 22 abierto a 0.0.0.0/0
resource "aws_security_group" "demo_sg" {
  name        = "devsecops-demo-sg"
  description = "SG demo con regla amplia (para Checkov)"
  ingress {
    description = "SSH abierto"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
