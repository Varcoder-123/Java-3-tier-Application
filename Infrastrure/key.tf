  data "azurerm_client_config" "current" {}

  resource "azurerm_key_vault" "kv" {
    name                = "vigneshkv12345"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name

    tenant_id = data.azurerm_client_config.current.tenant_id

    sku_name = "standard"
  }

  resource "azurerm_key_vault_secret" "vm_password" {

  name         = "vm-password"

  value        = "Vignesh@12345"

  key_vault_id = azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "vm_password" {

  name         = "vm-password"

  key_vault_id = azurerm_key_vault.kv.id
}