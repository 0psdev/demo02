## demo02
How to use Jenkins deploy virtual machine from vcenter using terraform script. And after create virtual machine assign IP address and joint domain.

## Introduction
This repo use for study IAC.

### Software Requirement
1. vCenter and vSphere host
2. Jenkins
3. Terraform

### File lists
1. <a href="https://github.com/0psdev/demo02/blob/main/variables.tf" target="_blank">variables.tf</a> -> This file is include all variable that need to use deploy virtual manchine.
   
   VSPHERE_USER = vcenter username

   VSPHERE_PASS = vcenter password

   VSPHERE_SERVER = vcenter servername

   VSPHERE_DC = datacentername

   VSPHERE_CLUSTER = clustername

   VSPHERE_DSG = datastore name

   VSPHERE_NETWORK = network name

   VSPHERE_TEMPLATE = template name

   VSPHERE_VMNAME = virtual machine name

   VSPHERE_VCPU = how many vCPU to assing

   VSPHERE_VRAM = how many vRAM to assing

   VSPHERE_COMNAME = computer name

   VSPHERE_JDACC = domain user to joint account

   VSPHERE_JDPASS = doamin password to joint account

   
2. <a href="https://github.com/0psdev/demo02/blob/main/main.tf" target="_blank">main.tf</a> -> This file is include all configuration that need to deploy virtual machine.

3. <a href="https://github.com/0psdev/demo02/blob/main/Jenkinsfile" target="_blank">jenkinsfile</a> -> This file is step to run CI/CD in jenkins.
   
