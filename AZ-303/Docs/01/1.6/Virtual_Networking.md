## Azure Networking

### [1.6.0 Concepts of Virtual Network & Subnet:](https://github.com/hmsvigle/Azure/tree/Az-303-My-Notes-V2/AZ-303/Edureka/Day-02#azure-virtual-network-azure-vn)
  * Public IP Address: Communication to Internet
  * Private IP Address: Communication between Virtual Networks / Subnets / with-in an onprem nw
  * There are 2 SKUs: 
    * Basic: 
      * Static / Dynamic IP Address
      * NSG (*Optional*) - restrict public ip
    * Standard SKU: 
      *  Static IP Address
      *  NSG is required to restrict traffic
      *  ZRS is Default

### IP Addressing:
  * IP has 10.0.0.5 --> each bit consists of 8 bits i.e [0000 1010] . [0000 0000] . [0000 0000] . [0000 0101] 
  * CIDR = `10.0.0.0/24` --> 24 bits (1st three bits) are fixed & remaining (32-24) 8 bits can be adjusted to get the IPs, which can be assigned to VMS
  * 
