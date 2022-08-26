variable "prefix" {
  type        = string
  description = "Service Principal prefix"
}

variable "organization" {
  type        = string
  description = "Service Principal prefix"
}

variable "role_definition_name" {
    type        = string
    description = "role defination name for our service principal e.g owner, contributor, etc"
}

variable "end_date_cert" {
   type        = string
   description = "end date of the certificate being created which is always in hours"
}

variable "end_date_sect" {
   type        = string
   description = "end date of the secret being created which is always in hours"
}