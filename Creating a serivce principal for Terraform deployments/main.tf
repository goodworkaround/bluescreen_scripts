resource "azurerm_key_vault" "kv" {
  name                = "kv1youtube987"
  location            = "westeurope"
  resource_group_name = "youtube"
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
}
