variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "DevOps"
  description = "Name of the resource group."

}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "computer_name" {
  type        = string
  default     = "dof01"
  description = "Name of the computer."

}

variable "user_name" {
  type        = string
  default     = "azureuser"
  description = "Name of the user."

}

variable "storage_account_type" {
  type        = string
  default     = "Standard_LRS"
  description = "default storage account type to deploy infrastructure"

}

variable "azurerm_vm_size" {
  type        = string
  default     = "Standard_B1ls"  
  description = "The availability vm size where the instance will be deployed"
}

variable "vnet_range" {
  type        = list(string)
  default     = ["10.2.0.0/16"]
  description = "Address range for deployment VNet"
}
variable "subnet_range" {
  type        = list(string)
  default     = ["10.2.0.0/24"]
  description = "Address range for session host subnet"
}

variable "source_image_reference_publisher" {
  type        = string
  default     = "Canonical"  
  description = "The availability os image publisher where the instance will be deployed"
}

variable "source_image_reference_offer" {
  type        = string
  default     = "0001-com-ubuntu-server-jammy"  
  description = "The availability os image offer where the instance will be deployed"
}

variable "source_image_reference_sku" {
  type        = string
  default     = "22_04-lts-gen2"  
  description = "The availability os image sku where the instance will be deployed"
}

variable "source_image_reference_version" {
  type        = string
  default     = "latest"  
  description = "The availability os image version where the instance will be deployed"
}

variable "azurerm_virtual_network_name" {
  type        = string
  default     = "myVnet"  
  description = "Name of your virtual network "
}

variable "azurerm_subnet_name" {
  type        = string
  default     = "mySubnet"  
  description = "Name of your subnetwork in virtual network "
}

variable "azurerm_public_ip" {
  type        = string
  default     = "myPublicIP"  
  description = "Public ip of your virtual network "
}


