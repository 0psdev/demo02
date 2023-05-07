variable "VSPHERE_USER" {
  type = string
}

variable "VSPHERE_PASS" {
  type = string
}

variable "VSPHERE_SERVER" {
  type = string
  default = "vc01.home.local"
}

variable "VSPHERE_DC" {
  type = string
  default = "Datacenter"
}

variable "VSPHERE_CLUSTER" {
  type = string
  default = "Cluster"
}

variable "VSPHERE_DSG" {
  type = string
  default = "datastore1"
}

variable "VSPHERE_NETWORK" {
  type = string
  default = "VM Network"
}

variable "VSPHERE_TEMPLATE" {
  type = string
  default = "W16"
}

variable "VSPHERE_VMNAME" {
  type = string
  default = "SERVER01"
}

variable "VSPHERE_VCPU" {
  type = number
  default = "2"
}

variable "VSPHERE_VRAM" {
  type = string
  default = "4096"
}

variable "VSPHERE_COMNAME" {
  type = string
  default = "SERVER01"
}

variable "VSPHERE_JDACC" {
  type = string
}

variable "VSPHERE_JDPASS" {
  type = string
}


