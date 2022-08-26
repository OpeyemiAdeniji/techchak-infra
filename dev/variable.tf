variable "postgresql-admin-login" {
  type        = string
  description = "Login to authenticate to PostgreSQL Server"
  default     = "techchak"
}

variable "postgresql-admin-password" {
  type        = string
  description = "Password to authenticate to PostgreSQL Server"
  default     = "Pluto123!#$%^"
}

variable "location" {
  type        = string
  description = "Region where reaources are created"
  default     = "eastus"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for all resoureces provisioned"
  default     = "techchakdev-resources"
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
  default     = "dev"
}

variable "db_name" {
  type        = string
  description = "PostgreSQL Database Name"
  default     = "kopidb"
}

variable "PG_StartIpAddress" {
  type        = string
  description = "PostgreSQL start Ip Address"
  default     = "210.170.94.100"
}

variable "PG_EndIpAddress" {
  type        = string
  description = "PostgreSQL End Ip Address"
  default     = "210.170.94.120"
}

variable "organization" {
  type        = string
  description = "Organization name for our resources"
  default     = "techchak"
}

variable "role_definition_name" {
  type        = string
  description = "role defination name for our service principal e.g owner, contributor, etc"
  default     = "owner"
}

variable "end_date_cert" {
  type        = string
  description = "end date of the certificate being created which is always in hours"
  default     = "8640h" #12months validity period
}

variable "end_date_sect" {
  type        = string
  description = "end date of the secret being created which is always in hours"
  default     = "4320h" #expire in 6 months
}

variable "container_sku" {
  description = "The container SKU for our container registry"
  default     = "Standard" # it could be basic, standard, or premium
}