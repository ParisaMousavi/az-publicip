resource "azurerm_public_ip" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method
  sku                 = var.sku
  reverse_fqdn        = var.reverse_fqdn
  ip_version          = var.ip_version
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}

