module "postgres_database" {
  source                    = "../modules/Az_Postgres"
  db_name                   = var.db_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  postgresql-admin-login    = var.postgresql-admin-login
  postgresql-admin-password = var.postgresql-admin-password
  PG_StartIpAddress         = var.PG_StartIpAddress
  PG_EndIpAddress           = var.PG_EndIpAddress
  postgresql-sku-name       = var.postgresql-sku-name
  postgresql-version        = var.postgresql-version
  postgresql-storage        = var.postgresql-storage
  prefix                    = var.prefix
  depends_on = [module.container_registry]
}

module "service_principal" {
  source               = "../modules/service_principal" #you can always change the subscription value in data.tf under service principal folder
  organization         = var.organization
  role_definition_name = var.role_definition_name
  end_date_cert        = var.end_date_cert
  end_date_sect        = var.end_date_sect
  prefix               = var.prefix
}

module "container_registry" {
  source        = "../modules/Az_Container_Reg"
  organization  = var.organization
  location      = var.location
  container_sku = var.container_sku
  prefix        = var.prefix
}