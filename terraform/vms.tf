module "test_vm" {
  source              = "./modules/cloudinit-vms"
  target_node         = "<your-cluster-node-name>"
  base_template       = "<your-cloudinit-template-name>"
  cores               = 1
  memory              = 1028
  storage_size        = "15G"
  ipaddr              = "192.168.1.50/32"
  host_name           = "test-node-01"
  PM_API_TOKEN_ID     = var.PM_API_TOKEN_ID
  PM_API_TOKEN_SECRET = var.PM_API_TOKEN_SECRET

}