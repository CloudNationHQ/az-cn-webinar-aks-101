resource "azurerm_container_registry" "default" {
  name                = module.naming.container_registry.name_unique
  resource_group_name = module.rg.groups.default.name
  location            = module.rg.groups.default.location
  sku                 = "Standard"
}

resource "azurerm_role_assignment" "aks_to_kubelet_identity" {
  principal_id         = azurerm_user_assigned_identity.aks.principal_id
  role_definition_name = "Managed Identity Operator"
  scope                = azurerm_user_assigned_identity.aks_kubelet.id
}
