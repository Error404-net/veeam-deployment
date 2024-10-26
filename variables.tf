variable "vlan67_gateway" {
  description = "Gateway for VLAN 67 (Management VLAN)"
  default     = "10.1.67.1"
}

variable "vlan68_gateway" {
  description = "Gateway for VLAN 68 (Backup Traffic VLAN)"
  default     = "10.1.68.1"
}

variable "vlan69_gateway" {
  description = "Gateway for VLAN 69 (Storage VLAN)"
  default     = "10.1.69.1"
}
# Proxmox API details
variable "proxmox_api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "proxmox_api_token" {
  description = "Proxmox API Token"
  type        = string
  sensitive   = true
}

variable "proxmox_user" {
  description = "Proxmox username"
  type        = string
}

variable "proxmox_password" {
  description = "Proxmox password"
  type        = string
  sensitive   = true
}
variable "target_node" {
  description = "The Proxmox node on which to deploy the VMs."
  type        = string
}
variable "template_name" {
  description = "Windows2022Template"
  type        = string
}
