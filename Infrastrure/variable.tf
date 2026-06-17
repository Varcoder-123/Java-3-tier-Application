variable "vm_password" {
  description = "Admin password for Linux VM"
  type        = string
  sensitive   = true
}

variable "mysql_password" {
  description = "Password for MySQL database"
  type        = string
  sensitive   = true
}