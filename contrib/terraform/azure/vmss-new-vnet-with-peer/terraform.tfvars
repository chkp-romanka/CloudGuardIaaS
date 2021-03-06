resource_group_name             = "checkpoint-vmss-terraform"
location                        = "eastus"
vmss_name                       = "checkpoint-vmss-terraform"
vnet_name                       = "checkpoint-vmss-vnet"
address_space                   = "172.16.0.0/16"
subnet_prefixes                 = ["172.16.1.0/24","172.16.2.0/24"]
backend_lb_IP_address           = 4
admin_password                  = "xxxxxxxxxx"
sic_key                         = "xxxxxxxxxx"
vm_size                         = "Standard_D3_v2"
disk_size                       = "110"
vm_os_sku                       = "sg-byol"
vm_os_offer                     = "check-point-cg-r8040"
os_version                      = "R80.40"
bootstrap_script                = "touch /home/admin/bootstrap.txt; echo 'hello_world' > /home/admin/bootstrap.txt"
allow_upload_download           = true
disable_password_authentication = false
availability_zones_num          = "1"
minimum_number_of_vm_instances  = 2
maximum_number_of_vm_instances  = 10
management_name                 = "mgmt"
management_IP                   = "192.168.100.4"
management_interface            = "eth0"
configuration_template_name     = "vmss_template"
notification_email              = "name@company.com"
frontend_load_distribution      = "Default"
backend_load_distribution       = "Default"
mgmt_vnet_name			= "mgmt-vnet"
mgmt_resource_group_name	= "management"
