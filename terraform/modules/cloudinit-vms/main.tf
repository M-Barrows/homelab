resource "proxmox_vm_qemu" "this" {
  name        = var.host_name
  target_node = var.target_node
  agent       = 0
  memory      = var.memory
  tags        = "iac,terraform,ansible"
  ipconfig0   = "ip=${var.ipaddr},gw=${var.gw}"
  os_type     = "cloud-init"
  clone       = var.base_template
  sockets     = 1
  cores       = var.cores
  scsihw      = "virtio-scsi-single"
  onboot      = true
  ciuser      = "serveradmin" // needed to bind ci user from template and assign default password
  cipassword  = ""
  sshkeys     = var.sshkeys
  network {
    bridge    = "vmbr0"
    firewall  = false
    link_down = false
    model     = "virtio"
    mtu       = 0
    queues    = 0
    rate      = 0
    tag       = -1
  }
  disks {
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = var.storage_size
        }
      }
    }
  }
}