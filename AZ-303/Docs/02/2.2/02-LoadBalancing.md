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

* Its a `Layer-7` LB
* `SSL Termination` feature can be enabled at App Gateway --> No dencryption burdon on Application
* `Session affinity` an be enabled
* App Gateway gets deployed at `empty Subnet`
* `Path Based` Routing feature is available.
* `Single/Multiple DNS` can be configured i.e `Host Based` routing.
* Gateway can be `auto-scaled` based on load.
* Routing Rules : `Basic` | `Path-Based`
* `WAF2` (Web App Firewall) can be enabled in App Gateway
* Health-Probe & Backend-Pool feature is same as others.

### 2.2.6 Implement the Azure Front Door Service:


### 2.2.7 Implement Azure Traffic Manager:

