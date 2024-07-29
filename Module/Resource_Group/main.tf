

resource "azurerm_resource_group" "rg" {  ###   { each.value.key = value}
    for_each = var.pipe
    
    name = each.value.rg_name
    location = each.value.location
  
}