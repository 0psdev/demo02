provider "vsphere" {
  user           = var.VSPHERE_USER
  password       = var.VSPHERE_PASS
  vsphere_server = var.VSPHERE_SERVER

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "datacenter" {
  name = var.VSPHERE_DC
}

data "vsphere_datastore" "datastore" {
  name          = var.VSPHERE_DSG
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.VSPHERE_CLUSTER
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = var.VSPHERE_NETWORK
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.VSPHERE_TEMPLATE
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_virtual_machine" "vm" {
  name             = var.VSPHERE_VMNAME
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = var.VSPHERE_VCPU
  memory           = var.VSPHERE_VRAM
  guest_id         = data.vsphere_virtual_machine.template.guest_id
  scsi_type        = data.vsphere_virtual_machine.template.scsi_type
  firmware         = data.vsphere_virtual_machine.template.firmware
  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }
  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template.disks.0.size
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
  }
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
    customize {
      windows_options {
        computer_name = var.VSPHERE_COMNAME
        time_zone = 205
        join_domain = "home.local"
        domain_admin_user = var.VSPHERE_JDACC
        domain_admin_password = var.VSPHERE_JDPASS
      }
      network_interface {
        ipv4_address = "192.168.253.81"
        ipv4_netmask = "24"
      }
      ipv4_gateway = "192.168.253.1"
      dns_server_list = ["192.168.253.10"]
    }
  }
}
