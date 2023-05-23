resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "my-rds-subnet-group"
  subnet_ids = [var.subnet_id1, var.subnet_id2]  # Ajusta los IDs de los subnets según tus necesidades
}

resource "aws_db_instance" "rds_instance" {
  identifier               = var.db_instance_identifier
  allocated_storage        = var.allocated_storage
 # max_allocated_storage    = 500
  engine                   = "postgres"
  engine_version           = "12"
  port                     = 5432 #Confirmar
  instance_class           = var.db_instance_class
  name                     = var.database_name
  username                 = var.database_username
  password                 = var.database_password
  publicly_accessible      = var.publicly_accessible
  backup_window            = "00:00-03:00" #Confirmar ventana
  #skip_final_snapshot      = true
  allow_major_version_upgrade = false #Confirmar ventana
  auto_minor_version_upgrade  = false #Confirmar ventana
  deletion_protection      = true 
  multi_az                 = false
  db_subnet_group_name     = aws_db_subnet_group.rds_subnet_group.name
  backup_retention_period  = 7 
  #Confirmar con equipo
  vpc_security_group_ids   = [aws_security_group.rds_sg.id]
  tags = {
    Name = var.database_name
  }
}
# Crear el grupo de seguridad para RDS
resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "Security group for RDS"
  vpc_id      = "vpc-0cb13b06621478c6d"
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Ajusta el rango de IP según tus necesidades
  }
}
