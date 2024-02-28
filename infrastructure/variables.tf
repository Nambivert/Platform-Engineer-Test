# Azure AKS Environment Name
variable "environment" {
  type        = string
  description = "This variable for Environment"
  default     = "dev"
}

variable "resource_group_name" {
  type        = string
  description = "variable for Resource Group"
  default     = "terraform-aks-dev"
}

# Azure Location
variable "location" {
  type        = string
  description = "Azure Region where resources will be provisioned"
  default     = "Central US"
}

variable "ssh_public_key" {
  default     = "~/.ssh/nambi-demo.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"
}