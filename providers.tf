provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "AZT"
    storage_account_name = "azt"
    container_name       = "tstate"
    subscription_id      = "46b94f70-3b0f-490f-81d9-4bc7421932b4"
    key = "terraform_mvc.state"
  }
}