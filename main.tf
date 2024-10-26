resource "proxmox_vm_qemu" "veeam_backup_server" {
  name        = "veeam-backup-server"
  target_node = var.target_node
  clone       = var.template_name

  lifecycle {
    create_before_destroy = true
  }

  cores        = 4                            # Match template cores
  cpu          = "x86-64-v2-AES"              # Match template CPU
  memory       = 4096                         # Match template memory
  scsihw       = "virtio-scsi-pci"            # Match SCSI hardware
  bios         = "ovmf"                        # Match template BIOS setting
  boot         = "order=scsi0;ide2;net0"      # Match boot order
  sockets      = 1                             # Match socket configuration
  agent        = 1                             # Enable agent if needed

  network {
    model     = "virtio"                      # Match network model
    bridge    = "vmbr0"                       # Keep the bridge as is
    tag       = 67                             # Set the new VLAN tag
    # Removed IP configuration to use DHCP from the template
  }

  disks {
    # Keep existing disks from the template; they'll be cloned automatically
  }
}

resource "proxmox_vm_qemu" "veeam_console_server" {
  name        = "veeam-console-server"
  target_node = var.target_node
  clone       = var.template_name

  lifecycle {
    create_before_destroy = true
  }

  cores        = 4                            # Match template cores
  cpu          = "x86-64-v2-AES"              # Match template CPU
  memory       = 4096                         # Match template memory
  scsihw       = "virtio-scsi-pci"            # Match SCSI hardware
  bios         = "ovmf"                        # Match template BIOS setting
  boot         = "order=scsi0;ide2;net0"      # Match boot order
  sockets      = 1                             # Match socket configuration
  agent        = 1                             # Enable agent if needed

  network {
    model     = "virtio"                      # Match network model
    bridge    = "vmbr0"                       # Keep the bridge as is
    tag       = 67                             # Set the new VLAN tag
    # Removed IP configuration to use DHCP from the template
  }

  disks {
    # Keep existing disks from the template; they'll be cloned automatically
  }
}

resource "proxmox_vm_qemu" "veeam_proxy_server" {
  name        = "veeam-proxy-server"
  target_node = var.target_node
  clone       = var.template_name

  lifecycle {
    create_before_destroy = true
  }

  cores        = 4                            # Match template cores
  cpu          = "x86-64-v2-AES"              # Match template CPU
  memory       = 4096                         # Match template memory
  scsihw       = "virtio-scsi-pci"            # Match SCSI hardware
  bios         = "ovmf"                        # Match template BIOS setting
  boot         = "order=scsi0;ide2;net0"      # Match boot order
  sockets      = 1                             # Match socket configuration
  agent        = 1                             # Enable agent if needed

  network {
    model     = "virtio"                      # Match network model
    bridge    = "vmbr0"                       # Keep the bridge as is
    tag       = 67                             # Set the new VLAN tag
    # Removed IP configuration to use DHCP from the template
  }

  disks {
    # Keep existing disks from the template; they'll be cloned automatically
  }
}

resource "proxmox_vm_qemu" "veeam_repo_server" {
  name        = "veeam-repo-server"
  target_node = var.target_node
  clone       = var.template_name

  lifecycle {
    create_before_destroy = true
  }

  cores        = 4                            # Match template cores
  cpu          = "x86-64-v2-AES"              # Match template CPU
  memory       = 4096                         # Match template memory
  scsihw       = "virtio-scsi-pci"            # Match SCSI hardware
  bios         = "ovmf"                        # Match template BIOS setting
  boot         = "order=scsi0;ide2;net0"      # Match boot order
  sockets      = 1                             # Match socket configuration
  agent        = 1                             # Enable agent if needed

  network {
    model     = "virtio"                      # Match network model
    bridge    = "vmbr0"                       # Keep the bridge as is
    tag       = 67                             # Set the new VLAN tag
    # Removed IP configuration to use DHCP from the template
  }

  disks {
    # Keep existing disks from the template; they'll be cloned automatically
  }
}
