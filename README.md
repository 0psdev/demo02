# demo02
How to use Jenkins deploy virtual machine from vcenter using terraform script. And after create virtual machine assign IP address and joint domain.

File
1. variables.tf -> This file is include all variable that need to use deploy virtual manchine.
   
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

   
2. mail.tf -> This file is include all configuration that need to deploy virtual machine.

3. jenkinsfile -> This file is step to run CI/CD in jenkins.
   
