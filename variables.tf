variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "db_instance_identifier" {
  description = "DB instance identifier"
  type        = string
  default     = "my-rds-instance"
}
variable"subnet_id1"{
  description = "DB instance class"
  type        = string
  default     = "xxx"
}
variable"subnet_id2"{
  description = "DB instance class"
  type        = string
  default     = "xxx"
}
variable "db_instance_class" {
  description = "DB instance class"
  type        = string
  default     = "db.t2.medium"
}

variable "allocated_storage" {
  description = "Allocated storage size in GB"
  type        = number
  default     = 255
}

variable "database_name" {
  description = "Database name"
  type        = string
  default     = "mydatabase"
}

variable "database_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "database_password" {
  description = "Database password"
  type        = string
  default     = "mypassword"
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
  default     = false
}
