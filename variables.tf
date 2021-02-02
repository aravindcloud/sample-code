variable "resource_group" {
  description = "The name of your Azure Resource Group."
  default     = "sample-terraform-rg"
}
variable "prefix" {
  description = "This prefix will be included in the name of some resources."
  default     = "tfguide"
}
variable "location" {
  description = "The region where the virtual network is created."
  default     = "centralus"
}
variable "virtual_network_name" {
  description = "The name for your virtual network."
  default     = "vnet-name"
}
variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.1.0/24"
}

variable "vm_size" {
  description = "Specifies the size of the virtual machine."
  default     = "Standard_A0"
}
variable "admin_username" {
  description = "Administrator user name"
  default     = "adminuser"
}

variable "admin_password" {
  description = "Administrator password"
  default     = "Adminpassword123!"
}

variable "source_network" {
  description = "Allow access from this network prefix. Defaults to '*'."
  default     = "*"
}