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

### 2.2.3 Web Application Firewall:

* New Resource -> WAF Policy -> 


### 2.2.6 Azure Front Door Service:

* * `Path Based Routing`: URL/`images`/* OR URL/`videos`/*
* `Session Affinity` , `SSL Termination`, `WAF`

### 2.2.7 Azure Traffic Manager (ATM):

* DNS based Traffic routing
* Routing methods:
    * `Priority`: 
  * `Weightage`: define % of traffic to route
  * `Performance`: High Performance endpoint will get request
    * `Real User Management:` This feature helps ATM understand the peformance of application/end-point
      * in ATM, generate a `key`(a js code), which can be embeded into application.
      * Key will provide metrics of end-points to ATM
  * `Geografic`: Closest endpoint (based on geo location), traffic will be routed.
  * `Multivalue`: all end points are sent to client & Client decides where to connect to
  * `Subnet`: Specific user IP addr will be sent to end points.

* For ATM, App service plan should be - `Standard`.
* Deploy 2 Webapps: Create web app resource in azure & Create `Webapp-Profile` & publish the local code to it.
* Add Resource --> `Traffic Manager Profile` --> No location specified as its Global --> Deploy
* Traffic Manager Profile --> EndPoint --> select webapp & define priority --> Done
  *  If app is running on VM, a DNS name has to be added to it.
  *  Endpoints should be healthy before getting added to ATM profile.
  *  Endpoint settings :- configure to check endpoint

