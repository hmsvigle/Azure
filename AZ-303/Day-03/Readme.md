# Virtual Networking 


### Private IP addresses:
* Below are the Private IP ranges specified by Microsoft. Rest all are called Public IPs.
  * `10.0.0.0`/`8` ------------> CIDR Block (classless inter domain routing)
  * `172.16.0.0`/`12` ---------> CIDR Block (classless inter domain routing)
  * `192.168.0.0`/`16` --------> CIDR Block (classless inter domain routing)
  * `/8` `/12` `/16`  ---------> Subnet masks
* We must not having overlaping CIDR blocks. Else Azure wont allow you to connect to the IPs.
#### How to Connect to VMs
* From internet --> a `Private` cluster : we need Private IP (non-routable address)
  * Thats why in your VNET, You need private ip addresses.
* From internet --> a `Public` cluster, we need Public IP (routable address)

* Azure has blocked 5 Addressed for itself in every Subnet. [Doc](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-faq#what-address-ranges-can-i-use-in-my-vnets)
  * e.g: In CIDR block  SN1: 192.168.0.0/24 ---> 256 - 5 = 251 (Available)
    *   192.168.0.0 --> (Network Address/Subnet ID)
    *   192.168.0.255 --> (Broadcast Address)
    *   192.168.0.1 --> Router IP
    *   192.168.0.2 --> DHCP
    *   192.168.0.3 --> Future Use
    *   192.168.0.4 -- 192.168.0.254  --> Available for Use

### Types of Connections:

#### 1. Connectivity between 2 subnets in same VNET:
  * In a same VNET, All subnets can talk to each other by default.
  * Security (restriction between ) can be applied using NSG (Network security group) to restrict conectivity between NSG.
    ```sh
      VNET1: 
	     SN1: VM1
	     SN2: VM2
    ```
#### 2. Connectivity between 2 VNETs:
  * To Allow connection between 2 VNETS itself, there are 2 ways:
    * Peering (Regional/Global)
    * VPN Connections
    ```sh
      VNET1: VM1
      VNET2: VM2
    ```
#### 3. Connectivity between On-Prem Network & Azure VNETs: 
  * To Allow connection between 2 VNETS of On-Prem & Azure :
    * Express Route
    * VPN Connection (Site to site connection)

#### 4. Network in other cloud platform, Azure VNET:
  * To Allow connection between 2 Cloud Platforms, this option is provided only Azure.
    * VPN Connection (Site to site connection)
    ```sh
       VPC1: AWS/GCP
       VNET1: Azure
    ```
#### 5. You have remote users (sales people) who want to connect to your on-prem/Azure network
  * Point to site VPN Connection
    ```sh
       VNET1: Azure/On-prem
    ```
#### 6. Hub and spoke model : 
  * 

  ![image](https://user-images.githubusercontent.com/24938159/113958111-1ef99700-983e-11eb-9717-6327d7fdfae7.png)
  
  

