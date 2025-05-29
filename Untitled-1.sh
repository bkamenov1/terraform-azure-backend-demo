az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/4c5b20ed-e5eb-4443-9e2b-d1857a39f767

az login --service-principal -u 13403f0b-bab1-4100-946a-dae808066966 -p 2NC8Q~MX4WUWy61sBgFFsZqNiUWjVEletgjT1awB --tenant f1d950c5-6107-48bd-8654-8bc5b45087e8

"user": {
      "name": "13403f0b-bab1-4100-946a-dae808066966",
      "type": "servicePrincipal"    


resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]

  provider "azurerm" {
  features {}
  subscription_id = "4c5b20ed-e5eb-4443-9e2b-d1857a39f767"
  tenant_id       = "f1d950c5-6107-48bd-8654-8bc5b45087e8"
}
