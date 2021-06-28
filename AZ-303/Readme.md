# [AZ-303 (Microsoft Azure Architect) Curriculum:](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4psD6)

## 1. Implement and Monitor an Azure Infrastructure ([50-55%]())
### 1.1 Implement infrastructure monitoring
* monitor security
* monitor performance
* monitor health and availability
* monitor cost
* configure advanced logging
* configure logging for workloads
* Initiate automated responses by using Action Groups
* configure and manage advanced alerts

### 1.2 [Implement storage accounts](./Docs/01/1.2/storage_account.md)
* select storage account options based on a use case
* configure Azure Files and Azure Blob storage
* configure network access to the storage account
* implement Shared Access Signatures and access policies
* implement Azure [AD authentication for storage]()
* manage access keys
* implement [Azure storage replication]()
* implement [Azure storage account failover]()

### 1.4 Implement VMs for Windows and Linux
* configure High Availability
* configure storage for VMs
* select virtual machine size
* implement Azure Dedicated Hosts
* deploy and configure scale sets
* configure Azure Disk Encryption

### 1.5 Automate deployment and configuration of resources
* save a deployment as an Azure Resource Manager template
* modify Azure Resource Manager template
* evaluate location of new resources
* configure a virtual hard disk(VHD) template
* deploy from a template
* manage a image library
* create and execute an automation runbook

### 1.6 Implement virtual networking
* implement VNet to VNet connections
* implement VNet peering
* 
### 1.7 Implement Azure Active Directory
* add custom domains
* configure Azure AD Identity Protection
* implement self-service password reset
* implement Conditional Access including MFA
* configure fraud alerts
* configure verification methods
* implement and manage guest accounts
* manage multiple directories
### 1.8 Implement and manage hybrid identities
* install and configure Azure AD Connect
* identity synchronization options
* configure and manage password sync and password writeback
* configure single sign-on
* configure Azure [AD Connect cloud sync]()
* use Azure AD Connect Health
* 
## 2. Implement Management and Security Solutions ([25-30%]())
### 2.1 Manage workloads in Azure
* migrate workloads using Azure Migrate
* implement Azure Backup for VMs
* implement disaster recovery
* implement [Azure Automation Update Management](./Docs/02/2.1.02-Manage_Workloads_Azure.md#214-implement-azure-update-management)

### 2.2 Implement load balancing and network security
* implement Azure Load Balancer
* implement an Azure Application Gateway
* implement a Web Application Firewall
* implement Azure Firewall
* implement Azure Firewall Manager
* implement the Azure Front Door Service
* implement Azure Traffic Manager
* implement Network Security Groups and Application Security Groups
* implement Bastion
### 2.3 Implement and manage Azure governance solutions
* create and manage hierarchical structure that contains management groups,
### 2.4 Subscriptions and resource groups
* assign RBAC roles
* create a custom RBAC role
* configure access to Azure resources by assigning roles
* configure management access to Azure
* interpret effective permissions
* set up and perform an access review
* implement and configure an Azure Policy
* implement and configure an Azure Blueprint
### 2.5 Manage security for applications
* implement and configure KeyVault
* implement and configure Managed Identities
* register and manage applications in Azure AD

## 3. Implement Solutions for Apps ([10-15%](./))
### 3.1 Implement an application infrastructure
* create and configure Azure App Service
* create an App Service Web App for Containers
* create and configure an App Service plan
* configure an App Service
* configure networking for an App Service
* create and manage deployment slots
* implement Logic Apps
* implement Azure Functions
### 3.2 Implement container-based applications
* create a container image
* configure Azure Kubernetes Service
* publish and automate image deployment to the Azure Container Registry
* publish a solution on an Azure Container Instance
## 4. Implement and Manage Data Platforms ([10-15%](./))
### 4.1 Implement NoSQL databases
* configure storage account tables
* select appropriate CosmosDB APIs
* set up replicas in CosmosDB
### 4.2 Implement Azure SQL databases
* configure Azure SQL database settings
* implement Azure SQL Database managed instances
* configure HA for an Azure SQL database
* publish an Azure SQL database


### `Rerefence_Links:`
* [labs_Recordings:](https://github.com/MicrosoftLearning/Lab-Demo-Recordings)
* [AZ-303-LearningGit:](https://github.com/MicrosoftLearning/AZ-303-Microsoft-Azure-Architect-Technologies)
* Exam Notes & Tips: [SLA](https://azure.microsoft.com/en-in/support/legal/sla/summary/)
  
| Service                | SLA    | Details                                                                   |
|------------------------|--------|---------------------------------------------------------------------------|
| API Management Service | 99.90% | Standard tier                                                             |
| API Management Service | 99.95% | Premium Tier Across 2/more regions                                        |
| API Management Service | NO SLA | Developer Tier                                                            |
| App Config store       | 99.90% | Customer Subscription                                                     |
| App Service            | 99.95% | Customer Subscription                                                     |
| Application Gateway    | 99.95% | 2/more Medium/Large Instances                                             |
| Application Insights   | 99.99% | Data Latency                                                              |
| `VMs`                    | 99.95% | `Availability Sets`                                                         |
| `VMs`                    | 99.99% | `Availability Zones`                                                        |
| `VMs`                    | 99.99% | `Premium Storage`                                                           |
| Event Hub              | 99.99% | Basic/Standard Tier                                                       |
| Storage Account        | 99.99% | Reqst to Read Data from RA-GRS (Secondary), if attempts fail from primary |
| Storage Account        | 99.90% | Reqst to Read Data from LRS/ZRS/GRS accounts                              |
| Storage Account        | 99.90% | Reqst to Read Data to LRS/ZRS/GRS accounts                                |
| VPN Gateway            | 99.90% | Basic Gateway for VPN/Express Route                                       |
| VPN Gateway            | 99.95% | Standard/ High Performance/ VpnGw1/ VpnGw2/ VpnGw3 Gateway for VPN        |
| VPN Gateway            | 99.95% | Standard, High Performance, Ultra Performance Gateway for ExpressRoute    |
