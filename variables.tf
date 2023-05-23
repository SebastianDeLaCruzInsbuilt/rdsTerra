variable "db_instance_identifier" {
  description = "DB instance identifier"
  type        = string
  default     = "valefielrds"
}
variable"subnet_id1"{
  description = "subnet_id1"
  type        = string
  default     = "subnet-0d97c628e5642eb58"
}
variable"subnet_id2"{
  description = "subnet_id2"
  type        = string
  default     = "subnet-02d3d69b855809443"
}
variable "db_instance_class" {
  description = "DB instance class"
  type        = string
  default     = "db.m5.large"
}

variable "allocated_storage" {
  description = "Allocated storage size in GB"
  type        = number
  default     = 255
}

variable "database_name" {
  description = "Database name"
  type        = string
  default     = "valefielprod"
}

variable "database_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "database_password" {
  description = "Database password"
  type        = string
  default     = "jX$!d-911-kZRZ"
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
  default     = false
}
