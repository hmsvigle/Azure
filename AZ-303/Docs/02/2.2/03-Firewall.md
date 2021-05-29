## Firewall

### [2.2.3 (WAF) Web Application Firewall:](./02-LoadBalancing.md#223-web-application-firewall)


### 2.2.4 Azure Firewall:

| Azure Firewall Service                                                        |
|-------------------------------------------------------------------------------|
| Its a managed Service by Azure                                                |
| It has `Built-in HA` feature                                                    |
| Deploy Across 2/more `Availability Zones`                                       |
| Network based `Filtering` (Source/Destn IP & protocol)                          |
| Stateful - Understands what packet of data to be allowed                      |
| Buil-in `Threat Intelligence` :- Deny Traffic for Malicious rqsts & send alerts |

* Gets deployed in VNET in `AzureFirewallSubnet` 
* Deploy Application to SubnetA --> Deploy Azure Firewall to `AzureFirewallSubnet` --> Assign Public-IP --> Done
* Deploy a `Route Table` to App (SubnetA) --> rules to route to Azure Firewall.
  * `Address Prefix` = Target Address
  * `Next Hop`: Route through Appliance (Firewall)
  * `Next Hop Address`: Private IP Address of Firewall
  * Any Request to Internet (0.0.0.0/0) --> Route to Firewall
* Add `NAT Rules` at Firewall --> (Request from Internet -> VM) 
  * 

### 2.2.5 Azure Firewall Manager:

