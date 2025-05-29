terraform {
  backend "azurerm" {
    use_cli              = true                                   # Can also be set via `ARM_USE_CLI` environment variable.
    use_azuread_auth     = true                                   # Can also be set via `ARM_USE_AZUREAD` environment variable.
    tenant_id            = "f1d950c5-6107-48bd-8654-8bc5b45087e8" # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
    resource_group_name  = "demo-resources"
    storage_account_name = "storagev1345345"        # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "prod-tfstate"           # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
