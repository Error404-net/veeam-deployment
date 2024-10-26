terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc4"  # Replace with the latest stable version
    }
  }
}

provider "proxmox" {
  pm_api_url  = var.proxmox_api_url
  pm_user     = var.proxmox_user
  pm_password = var.proxmox_password



}
