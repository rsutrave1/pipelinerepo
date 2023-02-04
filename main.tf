

resource "azurerm_resource_group" "rg" {
  name     = "terraform-rg2"
  location = "East US"
  tags = {
    environment = "production"
    tier = "backend"

  }
}


resource "azurerm_public_ip" "rg"{
    name = "pip1"
    resource_group_name =  azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    allocation_method = "Static"

  tags = {
    environment = "Production"
  }
}

resource "azurerm_public_ip" "rgdup"{
    name = "pip2"
    resource_group_name =  azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    allocation_method = "Static"

  tags = {
    environment = "Production"
  }
}
