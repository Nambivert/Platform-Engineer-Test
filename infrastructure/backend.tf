# Configure Terraform State Storage
terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-aks-dev"
    storage_account_name = "terraformstatenambi"
    container_name       = "prodtfstate"
    key                  = "terraform-custom-aks.tfstate"
  }
}