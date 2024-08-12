variable "PM_API_TOKEN_ID" {
  type = string
}
variable "PM_API_TOKEN_SECRET" {
  type = string
}
variable "memory" {
  type = number
  default = 1028
}
variable "cores" {
  type = number
  default = 1
}
variable "ipaddr" {
  type = string
  default = "192.168.1.0/24"
}
variable "gw" {
  type = string
  default = "192.168.1.1"
}
variable "target_node" {
  type = string
}
variable "storage_size" {
  type = string
  default = "2258M"
}
variable "host_name" {
  type = string
}
variable "base_template" {
  type = string
}