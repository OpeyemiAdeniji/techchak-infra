variable "postgresql-admin-login" {
  type        = string
  description = "Login to authenticate to PostgreSQL Server"
}

variable "postgresql-admin-password" {
  type        = string
  description = "Password to authenticate to PostgreSQL Server"
}

variable "postgresql-version" {
  type        = string
  description = "PostgreSQL Server version to deploy"
  default     = "11"
}

variable "postgresql-sku-name" {
  type        = string
  description = "PostgreSQL SKU Name"
  default     = "B_Gen5_1"
}

variable "postgresql-storage" {
  type        = string
  description = "PostgreSQL Storage in MB, from 5120 MB to 4194304 MB"
  default     = "5120"
}

variable "prefix" {
  type        = string
  description = "name of postgresql server"
}

variable "location" {
  type        = string
  description = "Region where reaources are created"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for all resoureces provisioned"
}

variable "db_name" {
  type        = string
  description = "PostgreSQL Database Name"
}

variable "PG_StartIpAddress" {
  type        = string
  description = "PostgreSQL start Ip Address"
}

variable "PG_EndIpAddress" {
  type        = string
  description = "PostgreSQL End Ip Address"
}

variable "organization" {
  description = "The organization for our resource"
}