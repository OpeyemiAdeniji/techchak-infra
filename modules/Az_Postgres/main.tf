# Create a PostgreSQL Server
resource "azurerm_postgresql_server" "postgresql-server" {
  name                = "${var.prefix}-postgresql-server"
  location            =  var.location
  resource_group_name = "${var.resource_group_name}-${var.prefix}"

  administrator_login          = var.postgresql-admin-login
  administrator_login_password = var.postgresql-admin-password

  sku_name = var.postgresql-sku-name
  version  = var.postgresql-version

  storage_mb        = var.postgresql-storage
  auto_grow_enabled = true

  backup_retention_days        = 7
  geo_redundant_backup_enabled = false

  public_network_access_enabled    = true
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"

  depends_on = [module.Az_Container_Reg.azurerm_resource_group.techchak]
}

# Create a PostgreSQL Database
resource "azurerm_postgresql_database" "postgresql-db" {
  name                = "${var.db_name}-${var.prefix}"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgresql-server.name
  charset             = "utf8"
  collation           = "English_United States.1252"
  depends_on = [module.Az_Container_Reg.azurerm_resource_group.techchak]
}

# Firewall Rule to access the PostgreSQL Server
resource "azurerm_postgresql_firewall_rule" "postgresql-fw-rule" {
  name                = "${var.prefix}-postgresql-office-access"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgresql-server.name
  start_ip_address    = var.PG_StartIpAddress
  end_ip_address      = var.PG_EndIpAddress
  depends_on = [module.Az_Container_Reg.azurerm_resource_group.techchak]
}