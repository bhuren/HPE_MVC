resource_group_name = "rg1"
resource_group_location = "centralindia"
address_space = ["10.0.0.0/16"]
vnet_name = "vnet1"
subnet_details = [
    {
      ip       = "10.0.1.0/24"
      name     = "subnet1"
    },
    {
      ip       = "10.0.2.0/24"
      name     = "subnet2"
    },
  ]