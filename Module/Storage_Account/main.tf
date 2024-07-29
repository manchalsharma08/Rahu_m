


resource "azurerm_storage_account" "st" {
    for_each = var.pipe
  name                     = each.value.st_name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}