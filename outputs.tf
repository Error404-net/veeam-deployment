output "veeam_backup_server_ip" {
  value = proxmox_vm_qemu.veeam_backup_server.ipconfig0
}

output "veeam_proxy_server_ip" {
  value = proxmox_vm_qemu.veeam_proxy_server.ipconfig0
}

output "veeam_repo_server_ip" {
  value = proxmox_vm_qemu.veeam_repo_server.ipconfig0
}

output "veeam_console_server_ip" {
  value = proxmox_vm_qemu.veeam_console_server.ipconfig0
}
