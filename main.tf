provider "aws" {
  region = var.aws_region
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "my-rds-subnet-group"
  subnet_ids = [var.subnet_id1, var.subnet_id2]  # Ajusta los IDs de los subnets según tus necesidades
}

resource "aws_db_instance" "rds_instance" {
  identifier               = var.db_instance_identifier
  allocated_storage        = var.allocated_storage
  engine                   = "postgres"
  engine_version           = "12"
  instance_class           = var.db_instance_class
  name                     = var.database_name
  username                 = var.database_username
  password                 = var.database_password
  publicly_accessible     = var.publicly_accessible
  db_subnet_group_name     = aws_db_subnet_group.rds_subnet_group.name

  vpc_security_group_ids   = [aws_security_group.rds_sg.id]

  # Configuración adicional de la instancia RDS
  # ...

  tags = {
    Name = "MyRDSInstance"
  }
}

# Crear el grupo de seguridad para RDS
resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "Security group for RDS"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Ajusta el rango de IP según tus necesidades
  }
}

