variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-azure-basic-infra"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "azure-basic"
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key file"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
