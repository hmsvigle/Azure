# 2.2 Implement load balancing and network security

## Load Balancer:

* Frontend-IP: 
* Backend Pool: Add backend VMs
* LoadBalancing Rules: Incoming rqst - Front-IP:<Front-End Port> --> <Backend_Pool>:<Port>
* Health Probe: Health check for backend VMs to check if the backend VMs are up & running. 
  
> Both the VMs will reflect Public-IP address of LB-Frontend-IP

<img src="https://user-images.githubusercontent.com/24938159/119975645-ba53f080-bfd3-11eb-8e01-f982eaa68f1f.png" width="500">


### 2.2.1 Implement Azure Load Balancer:

* SKUs: `Basic` & `Standard`
  * Basic SKU: 
    * Must be part of Availability Set/Scaleset

  * Standard SKU:
    * Multiple VMs, need not be part of Availabuility Set/Scaleset, But VMs must be `part of 1 VNET`.
    * Public IP to be assigned to Azure LB service, also should be of type Standard (not Basic).

### 2.2.2 Implement an application gateway:


### 2.2.6 Implement the Azure Front Door Service:


### 2.2.7 Implement Azure Traffic Manager:

